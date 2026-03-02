---
permalink: /
title: Uki D. Lucas' blog and portfolio
author_profile: true
redirect_from:
  - /about/
  - /about.html
author:
  - Uki D. Lucas
---
{% assign featured_posts = site.posts | where: "portfolio", true %}
{% assign portfolio_items = featured_posts | concat: site.portfolio %}
{% assign portfolio_items = portfolio_items | sort: "date" | reverse %}
<br/>

<h1>Portfolio</h1>
<ul>
  {% for item in portfolio_items %}
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
 
