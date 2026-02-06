---
layout: single
title: "Tech 기록"
permalink: /categories/tech/
---

프로젝트 개발 기록과 기술 포스팅을 정리합니다.

{% assign posts = site.categories["tech"] | sort: "date" %}

{% if posts %}
<ul class="summary">
  {% for post in posts %}
  <li class="chapter">
    <a href="{{ post.url }}">{{ post.date | date: "%Y-%m-%d" }} · {{ post.title }}</a>
  </li>
  {% endfor %}
</ul>
{% else %}
아직 Tech 카테고리 글이 없습니다.
{% endif %}
