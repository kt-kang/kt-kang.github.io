---
layout: single
title: "독서 기록"
permalink: /categories/reading/
---

읽은 책과 인상 깊은 문장을 기록합니다.

{% assign posts = site.categories["reading"] | sort: "date" %}

{% if posts %}
<ul class="summary">
  {% for post in posts %}
  <li class="chapter">
    <a href="{{ post.url }}">{{ post.date | date: "%y%m%d" }} · {{ post.title }}</a>
    {% if post.tags %}
    <small>
      {% for tag in post.tags %}
      <a href="/tags/#{{ tag | slugify }}">{{ tag }}</a>{% unless forloop.last %}, {% endunless %}
      {% endfor %}
    </small>
    {% endif %}
  </li>
  {% endfor %}
</ul>
{% else %}
아직 독서 카테고리 글이 없습니다.
{% endif %}
