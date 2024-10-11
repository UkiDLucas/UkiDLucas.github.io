---
permalink: /
title: Uki D. Lucas' writings
author_profile: true
redirect_from:
  - /about/
  - /about.html
author:
  - Uki D. Lucas
---
<br/>

<h1>Portfolio</h1>
<ul>
  {% for item in site.portfolio %}
    <li>
      <a href="{{ item.url }}">{{ item.title }}</a> - {{ item.excerpt }}
    </li>
  {% endfor %}
</ul>

<br/>

<h1>Blog Posts</h1>
<ul>
  {% for item in site.posts %}
    <li>
      <a href="{{ item.url }}">{{ item.title }}</a> - {{ item.excerpt }}
    </li>
  {% endfor %}
</ul>
 