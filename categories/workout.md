---
layout: single
title: "운동 기록"
permalink: /categories/workout/
---

매일의 운동을 기록하고, 컨디션과 중량 변화를 추적합니다.

{% assign posts = site.categories["workout"] | sort: "date" %}

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
아직 운동 카테고리 글이 없습니다.
{% endif %}
