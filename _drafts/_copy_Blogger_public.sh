#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEST_DIR="${DEST_DIR:-$SCRIPT_DIR}"
BLOG_BASE_URL="${BLOG_BASE_URL:-https://ukidlucas.blogspot.com}"
TAG="${1:-${TAG:-AI}}"
MAX_RESULTS="${2:-${MAX_RESULTS:-100}}"

if [[ ! "$MAX_RESULTS" =~ ^[0-9]+$ ]] || [[ "$MAX_RESULTS" -lt 1 ]]; then
  echo "ERROR: MAX_RESULTS must be a positive integer. Got: $MAX_RESULTS" >&2
  exit 1
fi

mkdir -p "$DEST_DIR"

TAG_ENCODED="$(python3 -c 'import sys, urllib.parse; print(urllib.parse.quote(sys.argv[1], safe=""))' "$TAG")"
FEED_URL="${BLOG_BASE_URL%/}/feeds/posts/default/-/${TAG_ENCODED}?alt=atom&max-results=${MAX_RESULTS}"

TMP_FEED="$(mktemp)"
trap 'rm -f "$TMP_FEED"' EXIT

echo "Fetching Blogger feed: $FEED_URL"
curl -fsSL \
  -A "Mozilla/5.0 (compatible; copy-blogger-public/1.0)" \
  "$FEED_URL" \
  -o "$TMP_FEED"

python3 - "$TMP_FEED" "$DEST_DIR" "$TAG" <<'PY'
import html
import re
import sys
import urllib.error
import urllib.request
import xml.etree.ElementTree as ET
from datetime import datetime
from html.parser import HTMLParser
from pathlib import Path

feed_path = Path(sys.argv[1])
dest_dir = Path(sys.argv[2])
tag = sys.argv[3]

NS = {"atom": "http://www.w3.org/2005/Atom"}
BLOCK_TAGS = {
    "address", "article", "aside", "blockquote", "dd", "div", "dl", "dt",
    "fieldset", "figcaption", "figure", "footer", "form", "h1", "h2", "h3",
    "h4", "h5", "h6", "header", "hr", "li", "main", "nav", "ol", "p", "pre",
    "section", "table", "tbody", "td", "tfoot", "th", "thead", "tr", "ul",
}
USER_AGENT = "Mozilla/5.0 (compatible; copy-blogger-public/1.1)"


class HtmlToText(HTMLParser):
    def __init__(self):
        super().__init__(convert_charrefs=True)
        self.parts = []

    def _append(self, value):
        if value:
            self.parts.append(value)

    def handle_starttag(self, tag, attrs):
        tag = tag.lower()
        if tag == "br":
            self._append("\n")
        elif tag == "li":
            self._append("\n- ")
        elif tag in BLOCK_TAGS:
            self._append("\n")

    def handle_endtag(self, tag):
        if tag.lower() in BLOCK_TAGS:
            self._append("\n")

    def handle_data(self, data):
        self._append(data)

    def text(self):
        raw = html.unescape("".join(self.parts)).replace("\xa0", " ")
        lines = [re.sub(r"[ \t]+", " ", ln).strip() for ln in raw.splitlines()]
        compact = []
        prev_blank = False
        for ln in lines:
            if ln == "":
                if not prev_blank:
                    compact.append("")
                prev_blank = True
            else:
                compact.append(ln)
                prev_blank = False
        text = "\n".join(compact).strip()
        return text + "\n" if text else ""


class PostBodyExtractor(HTMLParser):
    """Extract the first <div class='post-body entry-content'> ... </div> block."""

    def __init__(self):
        super().__init__(convert_charrefs=False)
        self.capturing = False
        self.done = False
        self.div_depth = 0
        self.parts = []

    def _is_post_body(self, attrs):
        class_value = ""
        for k, v in attrs:
            if k == "class":
                class_value = v or ""
                break
        classes = set(class_value.split())
        return "post-body" in classes and "entry-content" in classes

    def handle_starttag(self, tag, attrs):
        if self.done:
            return
        if self.capturing:
            if tag.lower() == "div":
                self.div_depth += 1
            self.parts.append(self.get_starttag_text() or "")
            return
        if tag.lower() == "div" and self._is_post_body(attrs):
            self.capturing = True
            self.div_depth = 1
            self.parts.append(self.get_starttag_text() or "")

    def handle_startendtag(self, tag, attrs):
        if self.done:
            return
        if self.capturing:
            self.parts.append(self.get_starttag_text() or "")

    def handle_endtag(self, tag):
        if self.done or not self.capturing:
            return
        self.parts.append(f"</{tag}>")
        if tag.lower() == "div":
            self.div_depth -= 1
            if self.div_depth <= 0:
                self.capturing = False
                self.done = True

    def handle_data(self, data):
        if self.capturing and not self.done:
            self.parts.append(data)

    def handle_entityref(self, name):
        if self.capturing and not self.done:
            self.parts.append(f"&{name};")

    def handle_charref(self, name):
        if self.capturing and not self.done:
            self.parts.append(f"&#{name};")

    def html(self):
        return "".join(self.parts).strip()


class MediaCollector(HTMLParser):
    def __init__(self):
        super().__init__(convert_charrefs=True)
        self.urls = []

    def handle_starttag(self, tag, attrs):
        attrs_dict = dict(attrs)
        tag = tag.lower()
        if tag == "img" and attrs_dict.get("src"):
            self.urls.append(attrs_dict["src"])
        elif tag == "iframe" and attrs_dict.get("src"):
            self.urls.append(attrs_dict["src"])
        elif tag == "video" and attrs_dict.get("src"):
            self.urls.append(attrs_dict["src"])
        elif tag == "source" and attrs_dict.get("src"):
            self.urls.append(attrs_dict["src"])
        elif tag == "a" and attrs_dict.get("href"):
            href = attrs_dict["href"]
            if re.search(r"\.(png|jpe?g|gif|webp|svg|mp4|webm)(\?.*)?$", href, re.IGNORECASE):
                self.urls.append(href)

    def unique_urls(self):
        out = []
        seen = set()
        for u in self.urls:
            if u and u not in seen:
                seen.add(u)
                out.append(u)
        return out


def sanitize_filename(value):
    cleaned = html.unescape(value or "").replace("\n", " ").replace("\r", " ").strip()
    cleaned = re.sub(r'[\\/:*?"<>|]+', " ", cleaned)
    cleaned = re.sub(r"\s+", " ", cleaned).strip(" .")
    return cleaned[:180] or "untitled"


def slugify(value):
    slug = re.sub(r"\s+", "-", value.strip().lower())
    slug = re.sub(r"[^a-z0-9._-]+", "", slug)
    return slug or "tag"


def extract_text(html_blob):
    parser = HtmlToText()
    parser.feed(html_blob or "")
    parser.close()
    return parser.text()


def extract_media_urls(html_blob):
    parser = MediaCollector()
    parser.feed(html_blob or "")
    parser.close()
    return parser.unique_urls()


def fetch_page_html(url):
    if not url:
        return ""
    req = urllib.request.Request(url, headers={"User-Agent": USER_AGENT})
    try:
        with urllib.request.urlopen(req, timeout=30) as resp:
            return resp.read().decode("utf-8", errors="replace")
    except (urllib.error.URLError, TimeoutError):
        return ""


def extract_post_body_html(page_html):
    parser = PostBodyExtractor()
    parser.feed(page_html or "")
    parser.close()
    return parser.html()


def find_link(entry) -> str:
    for link in entry.findall("atom:link", NS):
        if link.get("rel") == "alternate":
            href = (link.get("href") or "").strip()
            if href:
                return href
    return ""


def parse_date(raw):
    value = (raw or "").strip()
    if not value:
        return ""
    try:
        return datetime.fromisoformat(value.replace("Z", "+00:00")).date().isoformat()
    except ValueError:
        return value


root = ET.parse(feed_path).getroot()
entries = list(root.findall("atom:entry", NS))
if not entries:
    raise SystemExit(f"No posts found for tag '{tag}'.")

tag_slug = slugify(tag)
written = 0

# Process oldest -> newest so duplicate titles keep the latest post.
for entry in reversed(entries):
    title = (entry.findtext("atom:title", default="", namespaces=NS) or "").strip() or "untitled"
    link = find_link(entry)
    pub_raw = (
        entry.findtext("atom:published", default="", namespaces=NS)
        or entry.findtext("atom:updated", default="", namespaces=NS)
        or ""
    )
    published = parse_date(pub_raw)

    content_node = entry.find("atom:content", NS)
    summary_node = entry.find("atom:summary", NS)
    content_html = ""
    if content_node is not None and content_node.text:
        content_html = content_node.text
    elif summary_node is not None and summary_node.text:
        content_html = summary_node.text

    body = extract_text(content_html)
    media_urls = extract_media_urls(content_html)

    if not body.strip() and link:
        page_html = fetch_page_html(link)
        post_body_html = extract_post_body_html(page_html)
        if post_body_html:
            fallback_body = extract_text(post_body_html)
            fallback_media = extract_media_urls(post_body_html)
            if fallback_body.strip():
                body = fallback_body
            if fallback_media:
                media_urls = fallback_media

    if not body.strip():
        if media_urls:
            body = "[Media-only post]\n\nembedded_media:\n"
            for url in media_urls:
                body += f"- {url}\n"
        else:
            body = "[No text content extracted]\n"

    out_path = dest_dir / f"{sanitize_filename(title)}.md"
    lines = [
        "#byUkiDLucas #Blogger #public",
        f"#tag/{tag_slug}",
        "",
        f"title: {title}",
        f"published: {published}",
        f"source: {link}",
        "",
        body.rstrip(),
        "",
    ]
    out_path.write_text("\n".join(lines), encoding="utf-8")
    print(f"Saved: {out_path.name}")
    written += 1

print(f"Done. Saved {written} post(s) to {dest_dir}")
PY
