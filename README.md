# UkiDLucas.github.io

Personal blog and portfolio site for Uki D. Lucas, built with Jekyll (Academic Pages / Minimal Mistakes base), customized for long-form article reading.

## Purpose

This repository is the source of a writing-first website with two primary goals:

1. Publish thoughtful, long-form articles in a clean "paper" reading experience.
2. Maintain a portfolio and archival structure without compromising readability.

## Functional Requirements

The site is driven by the following functional requirements.

### FR-01: Paper-first article rendering
- All blog posts in `_posts/` must render using `layout: paper`.
- `layout: paper` is the default for `type: posts` in `_config.yml`.
- Existing posts with `layout: single` are migrated to `layout: paper` to avoid split behavior.

### FR-02: Consistent paper alignment and typography
- The paper layout must keep title, byline, and body content on a shared centered measure.
- Header metadata and body blocks must align cleanly on desktop and mobile.
- Paper content must remain readable on narrow screens without layout breakage.

### FR-03: Masthead visual consistency
- The masthead title ("... blog and portfolio") must render in a single consistent color across both links and separator.
- Hover/visited states must not create unintended color mismatches in the title block.

### FR-04: Authoring workflow remains simple
- Authors can publish posts by creating Markdown files in `_posts/`.
- Required metadata remains lightweight (title/date/categories/tags/excerpt).
- Layout should not need to be specified per-post for normal blog publishing (default handles this).

### FR-05: Archive and navigation integrity
- Posts remain accessible from year archive and main navigation.
- Portfolio, talks, teaching, and publication collections continue to use their own layouts/behavior.

### FR-06: Local development and verification
- Site must run locally for preview before publish.
- One-time dependency setup (or after `Gemfile`/`Gemfile.lock` changes):
  ```bash
  source ./env.sh && bundle install
  ```
- Primary local command for day-to-day preview:
  ```bash
  ./run.sh
  ```
- If running `bundle` commands manually, load project-local Ruby gem paths first:
  ```bash
  source ./env.sh
  ```
- Build should remain GitHub Pages compatible.

## Lessons Learned

### 1) Defaults alone are not enough
Setting a default layout in `_config.yml` does not fix older posts with explicit front matter. If consistency is required, legacy front matter must be migrated too.

### 2) Alignment quality needs explicit constraints
Readable "paper" layouts require explicit width/measure control for header and body sections. Relying on inherited theme spacing leads to subtle misalignment.

### 3) Split-link masthead titles need forced color inheritance
When a title is composed of multiple links plus separator text, color should be normalized explicitly across normal/visited/hover/focus states.

### 4) Keep custom UI rules isolated
Custom paper styling is intentionally kept in `assets/css/zen-prototype.css`, loaded after `main.css`, so focused visual changes do not require broad theme rewrites.

### 5) Project README should reflect project reality
The root README is now project-specific (requirements, decisions, and workflow), replacing generic upstream template documentation.

## Current Implementation Notes

- Paper layout template: `_layouts/paper.html`
- Paper/masthead visual rules: `assets/css/zen-prototype.css`
- Post default layout rule: `_config.yml` (`defaults` -> `type: posts` -> `layout: paper`)

## Quick Audits

Check for accidental non-paper post layouts:

```bash
rg -n '^layout:\s*single$' _posts
```

Check current paper layout usage count:

```bash
rg -n '^layout:\s*paper$' _posts | wc -l
```

## Maintenance

- Keep article presentation stable and readable first.
- Avoid introducing new per-post layout divergence unless intentional.
- When visual tweaks are made, verify both desktop and mobile rendering locally before publishing.
