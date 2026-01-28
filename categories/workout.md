---
layout: single
title: "운동 기록"
permalink: /categories/workout/
---

{% assign posts = site.categories["workout"] | sort: "date" | reverse %}

{% if posts %}
<ul class="summary">
  {% for post in posts %}
  <li class="chapter">
    <a href="{{ post.url }}">{{ post.date | date: "%Y-%m-%d" }} · {{ post.title }}</a>
  </li>
  {% endfor %}
</ul>
{% else %}
아직 운동 카테고리 글이 없습니다.
{% endif %}
