---
layout: home
title: 홈
---

안녕하세요. 운동과 투자일지를 기록하는 블로그입니다.

최근 글을 확인해 주세요.

## 운동
{% assign 운동_posts = site.categories.운동 | sort: "date" | reverse %}
{% if 운동_posts %}
<ul class="summary">
  {% for post in 운동_posts %}
  <li class="chapter">
    <a href="{{ post.url }}">{{ post.date | date: "%Y-%m-%d" }} · {{ post.title }}</a>
  </li>
  {% endfor %}
</ul>
{% else %}
아직 운동 카테고리 글이 없습니다.
{% endif %}

## 투자
{% assign 투자_posts = site.categories.투자 | sort: "date" | reverse %}
{% if 투자_posts %}
<ul class="summary">
  {% for post in 투자_posts %}
  <li class="chapter">
    <a href="{{ post.url }}">{{ post.date | date: "%Y-%m-%d" }} · {{ post.title }}</a>
  </li>
  {% endfor %}
</ul>
{% else %}
아직 투자 카테고리 글이 없습니다.
{% endif %}
