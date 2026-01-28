---
layout: single
title: "투자 기록"
permalink: /categories/investment/
---

{% assign posts = site.categories["investment"] | sort: "date" | reverse %}

{% if posts %}
<ul class="summary">
  {% for post in posts %}
  <li class="chapter">
    <a href="{{ post.url }}">{{ post.date | date: "%Y-%m-%d" }} · {{ post.title }}</a>
  </li>
  {% endfor %}
</ul>
{% else %}
아직 투자 카테고리 글이 없습니다.
{% endif %}
