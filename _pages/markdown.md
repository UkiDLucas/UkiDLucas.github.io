---
permalink: /markdown/
title: "Markdown"
author_profile: true
redirect_from: 
  - /md/
  - /markdown.html
---

Open markdown.md in the text editor as you are reading it.


## Locations of key files/directories

* Basic config options: _config.yml
* Top navigation bar config: _data/navigation.yml
* Single pages: _pages/
* Collections of pages are .md or .html files in:
  * _publications/
  * _portfolio/
  * _posts/
  * _teaching/
  * _talks/
* Footer: _includes/footer.html
* Static files (like PDFs): /files/
* Profile image (can set in _config.yml): images/profile.png

## Tips and hints

* Name a file ".md" to have it render in markdown, name it ".html" to render in HTML.
* Go to the [Actions](https://github.com/UkiDLucas/UkiDLucas.github.io/actions) to find the last version Github built with Jekyll. 
  * Green check: successful build
  * Orange circle: building
  * Red X: error
  * No icon: not built
* Academic Pages uses [Jekyll Kramdown](https://jekyllrb.com/docs/configuration/markdown/), GitHub Flavored Markdown (GFM) parser, which is similar to the version of Markdown used on GitHub, but may have some minor differences. 
  * Some of emoji supported on GitHub should be supposed via the [Jemoji](https://github.com/jekyll/jemoji) plugin :computer:.
  * The best list of the supported emoji can be found in the [Emojis for Jekyll via Jemoji](https://www.fabriziomusacchio.com/blog/2021-08-16-emojis_for_Jekyll/#computer) blog post.

## Resources
 * [Liquid syntax guide](https://shopify.github.io/liquid/tags/control-flow/)
 * [MathJax Documentation](https://docs.mathjax.org/en/latest/)

## MathJax 

Support for MathJax Version 3.0 is included in the template:

$$
\displaylines{
\nabla \cdot E= \frac{\rho}{\epsilon_0} \\\
\nabla \cdot B=0 \\\
\nabla \times E= -\partial_tB \\\
\nabla \times B  = \mu_0 \left(J + \varepsilon_0 \partial_t E \right)
}
$$

The default delimiters of `$$...$$` and `\\[...\\]` are supported for displayed mathematics, while `\\(...\\)` should be used for in-line mathematics (ex., \\(a^2 + b^2 = c^2\\))

**Note** that since Academic Pages uses Markdown which cases some interference with MathJax and LaTeX for escaping characters and new lines, although [some workarounds exist](https://math.codidact.com/posts/278763/278772#answer-278772).

## Markdown guide

Academic Pages uses [kramdown](https://kramdown.gettalong.org/index.html) for Markdown rendering, which has some differences from other Markdown implementations such as GitHub's. In addition to this guide, please see the [kramdown Syntax page](https://kramdown.gettalong.org/syntax.html) for full documentation.  

### Header three

#### Header four

##### Header five

###### Header six

## Blockquotes

Single line blockquote:

> Quotes are cool.

## Tables

### Obsidian Markdown vs GitHub Flavored Markdown (GFM)
Here's the comparison table between Obsidian Markdown and GitHub Flavored Markdown (GFM), written in Markdown table notation:


| **Feature**                    | **Obsidian Markdown**                                             | **GitHub Flavored Markdown (GFM)**                           |                                     |
| ------------------------------ | ----------------------------------------------------------------- | ------------------------------------------------------------ | ----------------------------------- |
| **Basic Markdown Syntax**      | Fully supported (Headings, bold, italics, lists, etc.)            | Fully supported (Headings, bold, italics, lists, etc.)       |                                     |
| **Task Lists**                 | Supported with `[ ]` (unchecked) and `[x]` (checked)              | Supported with `- [ ]` (unchecked) and `- [x]` (checked)     |                                     |
| **Internal Links**             | Supports `[[Page Name]]` for linking between notes                | Not supported (uses `[text](url)`)                           |                                     |
| **Embeds**                     | Supports embedding notes, images, and PDFs via `![[Page Name]]`   | GFM supports embedding images, not notes or PDFs             |                                     |
| **Footnotes**                  | Supported with `[^1]` and defined later `[^1]: Footnote text`     | Supported using the same syntax                              |                                     |
| **Tables**                     | Fully supported                                                   | Fully supported                                              |                                     |
| **Code Blocks**                | Supported with backticks (\`\`\`)                                 | Supported with backticks (\`\`\`) and language specification |                                     |
| **HTML Support**               | Supports inline HTML                                              | Supports inline HTML                                         |                                     |
| **Checklists (Task Tracking)** | `- [ ] Task` and `- [x] Task` are supported and interactive       | `- [ ] Task` and `- [x] Task` supported but not interactive  |                                     |
| **Diagrams (Mermaid)**         | Supports Mermaid diagrams with code block like: ` ```mermaid `    | Not natively supported; requires additional plugins          |                                     |
| **Math and LaTeX**             | Supports LaTeX with `$...$` for inline math, `$$...$$` for blocks | Not natively supported                                       |                                     |
| **Wiki-style Links**           | Supported with `[[Note Name]]` linking directly to another file   | Not supported; uses standard links `[text](url)`             |                                     |
| **Customizable Themes**        | Full support with CSS customization in Obsidian                   | Limited to GitHub's predefined styles                        |                                     |
| **Plugins and Extensions**     | Extensive plugin system for additional features                   | No native plugin system                                      |                                     |
| **Inline Links with Aliases**  | `[[Page Name                                                      | Custom Alias]]` for linking with custom text                 | `[Alias](URL)` for custom link text |
| **Code Syntax Highlighting**   | Supported with language identifiers (e.g., ` ```python `)         | Supported with language identifiers                          |                                     |
| **Strikethrough**              | Supported with `~~text~~`                                         | Supported with `~~text~~`                                    |                                     |
| **Blockquotes**                | Supported with `>`                                                | Supported with `>`                                           |                                     |
| **YAML Front Matter**          | Supported for metadata at the top of the file                     | Supported for metadata at the top of the file                |                                     |
| **Task Prioritization**        | Obsidian allows task priority with plugins                        | Not natively supported                                       |                                     |
| **Collapsible Sections**       | Supported with plugins (e.g., "Foldable headings")                | Not supported natively                                       |                                     |
| **Drag-and-Drop Embedding**    | Supported for images, PDFs, and more                              | Not supported                                                |                                     |






## Definition Lists

Definition List Title
:   Definition list division.

Startup
:   A startup company or startup is a company or temporary organization designed to search for a repeatable and scalable business model.

#dowork
:   Coined by Rob Dyrdek and his personal body guard Christopher "Big Black" Boykins, "Do Work" works as a self motivator, to motivating your friends.

Do It Live
:   I'll let Bill O'Reilly [explain](https://www.youtube.com/watch?v=O_HyZ5aW76c "We'll Do It Live") this one.

## Unordered Lists (Nested)

  * List item one 
      * List item one 
          * List item one
          * List item two
          * List item three
          * List item four
      * List item two
      * List item three
      * List item four
  * List item two
  * List item three
  * List item four

## Ordered List (Nested)

  1. List item one 
      1. List item one 
          1. List item one
          2. List item two
          3. List item three
          4. List item four
      2. List item two
      3. List item three
      4. List item four
  2. List item two
  3. List item three
  4. List item four

## Buttons

Make any link standout more when applying the `.btn` class.

## Notices

Basic notices or call-outs are supported using the following syntax:

```markdown
**Watch out!** You can also add notices by appending `{: .notice}` to the line following paragraph.
{: .notice}
```

which wil render as:

**Watch out!** You can also add notices by appending `{: .notice}` to the line following paragraph.
{: .notice}

### Footnotes

Footnotes can be useful for clarifying points in the text, or citing information.[^1] Markdown support numeric footnotes, as well as text as long as the values are unique.[^note]

```markdown
This is the regular text.[^1] This is more regular text.[^note]

[^1]: This is the footnote itself.
[^note]: This is another footnote.
```

[^1]: Such as this footnote.
[^note]: When using text for footnotes markers, no spaces are permitted in the name.

## HTML Tags

### Address Tag

<address>
  1 Infinite Loop<br /> Cupertino, CA 95014<br /> United States
</address>

### Anchor Tag (aka. Link)

This is an example of a [link](http://github.com "Github").

### Abbreviation Tag

The abbreviation CSS stands for "Cascading Style Sheets".

*[CSS]: Cascading Style Sheets

### Cite Tag

"Code is poetry." ---<cite>Automattic</cite>

### Code Tag

You will learn later on in these tests that `word-wrap: break-word;` will be your best friend.

You can also write larger blocks of code with syntax highlighting supported for some languages, such as Python:

```python
print('Hello World!')
```

or R:

```R
print("Hello World!", quote = FALSE)
```

### Details Tag (collapsible sections)

The HTML `<details>` tag works well with Markdown and allows you to include collapsible sections, see [W3Schools](https://www.w3schools.com/tags/tag_details.asp) for more information on how to use the tag.

<details>
  <summary>Collapsed by default</summary>
  This section was collapsed by default!
</details>

The source code:

```HTML
<details>
  <summary>Collapsed by default</summary>
  This section was collapsed by default!
</details>
```

Or, you can leave a section open by default by including the `open` attribute in the tag:

<details open>
  <summary>Open by default</summary>
  This section is open by default thanks to open in the &lt;details open&gt; tag!
</details>


### Emphasize Tag

The emphasize tag should _italicize_ text.

### Insert Tag

This tag should denote <ins>inserted</ins> text.

### Keyboard Tag

This scarcely known tag emulates <kbd>keyboard text</kbd>, which is usually styled like the `<code>` tag.

### Preformatted Tag

This tag styles large blocks of code.

<pre>
.post-title {
  margin: 0 0 5px;
  font-weight: bold;
  font-size: 38px;
  line-height: 1.2;
  and here's a line of some really, really, really, really long text, just to see how the PRE tag handles it and to find out how it overflows;
}
</pre>

### Quote Tag

<q>Developers, developers, developers&#8230;</q> &#8211;Steve Ballmer

### Strike Tag

This tag will let you <strike>strikeout text</strike>.

### Strong Tag

This tag shows **bold text**.

### Subscript Tag

Getting our science styling on with H<sub>2</sub>O, which should push the "2" down.

### Superscript Tag

Still sticking with science and Isaac Newton's E = MC<sup>2</sup>, which should lift the 2 up.

### Variable Tag

This allows you to denote <var>variables</var>.

***
**Footnotes**

The footnotes in the page will be returned following this line, return to the section on <a href="#footnotes">Markdown Footnotes</a>.

