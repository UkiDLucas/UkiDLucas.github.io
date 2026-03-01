#!/usr/bin/env bash

set -euo pipefail

MEDIUM_HOME_URL="${MEDIUM_HOME_URL:-https://ukidlucas.medium.com}"
FEED_URL="${FEED_URL:-${MEDIUM_HOME_URL%/}/feed}"
FALLBACK_FEED_URL="${FALLBACK_FEED_URL:-https://medium.com/feed/@ukidlucas}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEST_DIR="${DEST_DIR:-$SCRIPT_DIR}"

mkdir -p "$DEST_DIR"

TMP_FEED="$(mktemp)"
trap 'rm -f "$TMP_FEED"' EXIT

echo "Fetching feed: $FEED_URL"
if ! curl -fsSL \
  -A "Mozilla/5.0 (compatible; copy-medium-public/1.0)" \
  "$FEED_URL" \
  -o "$TMP_FEED"; then
  if [[ -n "${FALLBACK_FEED_URL:-}" ]]; then
    echo "Primary feed failed. Trying fallback: $FALLBACK_FEED_URL"
    curl -fsSL \
      -A "Mozilla/5.0 (compatible; copy-medium-public/1.0)" \
      "$FALLBACK_FEED_URL" \
      -o "$TMP_FEED"
  else
    exit 1
  fi
fi

python3 - "$TMP_FEED" "$DEST_DIR" <<'PY'
import email.utils
import hashlib
import html
import os
import re
import shutil
import subprocess
import sys
import xml.etree.ElementTree as ET
from pathlib import Path
from datetime import datetime, timezone

feed_path = Path(sys.argv[1])
dest_dir = Path(sys.argv[2])

CONTENT_NS = "{http://purl.org/rss/1.0/modules/content/}encoded"
pandoc_path = shutil.which("pandoc")


def sanitize_filename(value: str) -> str:
    text = html.unescape(value or "").replace("\n", " ").replace("\r", " ").strip()
    text = re.sub(r'[\\/:*?"<>|]+', " ", text)
    text = re.sub(r"\s+", " ", text).strip(" .")
    if not text:
        text = "untitled"
    return text[:180]


def parse_pub_date(pub_date_raw: str):
    dt = email.utils.parsedate_to_datetime(pub_date_raw) if pub_date_raw else None
    if dt is None:
        dt = datetime.now(timezone.utc)
    elif dt.tzinfo is None:
        dt = dt.replace(tzinfo=timezone.utc)
    return dt


def html_to_markdown(html_text: str) -> str:
    if not pandoc_path:
        return html_text
    result = subprocess.run(
        [pandoc_path, "-f", "html", "-t", "gfm", "--wrap=none"],
        input=html_text.encode("utf-8"),
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        check=False,
    )
    if result.returncode != 0:
        return html_text
    return result.stdout.decode("utf-8")


root = ET.parse(feed_path).getroot()
channel = root.find("channel")
if channel is None:
    raise SystemExit("Could not parse RSS channel from feed.")

items = channel.findall("item")
if not items:
    raise SystemExit("No Medium articles found in feed.")

written = 0

for item in items:
    title = (item.findtext("title") or "untitled").strip()
    link = (item.findtext("link") or "").strip()
    pub_date_raw = (item.findtext("pubDate") or "").strip()
    pub_dt = parse_pub_date(pub_date_raw)
    date_str = pub_dt.date().isoformat()

    body_html = (
        item.findtext(CONTENT_NS)
        or item.findtext("description")
        or ""
    ).strip()

    body = html_to_markdown(body_html).rstrip() + "\n"

    safe_title = sanitize_filename(title)
    base_name = f"{date_str} {safe_title}"
    out_path = dest_dir / f"{base_name}.md"

    if out_path.exists():
        existing = out_path.read_text(encoding="utf-8", errors="ignore")
        if link and link in existing:
            pass
        else:
            link_tail = link.rstrip("/").split("/")[-1] if link else hashlib.sha1(title.encode("utf-8")).hexdigest()[:8]
            link_tail = sanitize_filename(link_tail)[:40]
            out_path = dest_dir / f"{base_name} [{link_tail}].md"

    header_lines = [
        "#byUkiDLucas #Medium #public",
        "",
        link,
        "",
        f"published: {date_str}",
        "",
    ]
    if not pandoc_path:
        header_lines.extend(
            [
                "<!-- Stored as HTML body because pandoc is not installed. -->",
                "",
            ]
        )

    out_path.write_text("\n".join(header_lines) + body, encoding="utf-8")

    epoch_ts = pub_dt.timestamp()
    os.utime(out_path, (epoch_ts, epoch_ts))

    print(f"Saved: {out_path.name}")
    written += 1

print(f"Done. Saved {written} article(s) to {dest_dir}")
PY
