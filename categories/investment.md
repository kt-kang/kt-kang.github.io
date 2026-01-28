---
layout: single
title: "투자 기록"
permalink: /categories/investment/
---

투자 판단, 포트폴리오 점검, 리밸런싱 과정을 기록합니다.

{% assign posts = site.categories["investment"] | sort: "date" %}

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
