---
layout: home
title: 홈
---

## Quiet Current
**흐름에 몸을 싣고, 나를 단련하다**

운동 · 투자 · 독서 · 기술 기록을 정리하는 개인 로그

안녕하세요. 꾸준함을 기반으로 삶의 흐름을 기록합니다.

최근 글을 확인해 주세요.

## 운동
{% assign workout_posts = site.categories["workout"] | sort: "date" | reverse %}
{% if workout_posts %}
<ul class="summary">
  {% for post in workout_posts %}
  <li class="chapter">
    <a href="{{ post.url }}">{{ post.date | date: "%y%m%d" }} · {{ post.title }}</a>
  </li>
  {% endfor %}
</ul>
{% else %}
아직 운동 카테고리 글이 없습니다.
{% endif %}

## 투자
{% assign investment_posts = site.categories["investment"] | sort: "date" | reverse %}
{% if investment_posts %}
<ul class="summary">
  {% for post in investment_posts %}
  <li class="chapter">
    <a href="{{ post.url }}">{{ post.date | date: "%y%m%d" }} · {{ post.title }}</a>
  </li>
  {% endfor %}
</ul>
{% else %}
아직 투자 카테고리 글이 없습니다.
{% endif %}

## Tech
{% assign tech_posts = site.categories["tech"] | sort: "date" | reverse %}
{% if tech_posts %}
<ul class="summary">
  {% for post in tech_posts %}
  <li class="chapter">
    <a href="{{ post.url }}">{{ post.date | date: "%y%m%d" }} · {{ post.title }}</a>
  </li>
  {% endfor %}
</ul>
{% else %}
아직 Tech 카테고리 글이 없습니다.
{% endif %}

## 독서
{% assign reading_posts = site.categories["reading"] | sort: "date" | reverse %}
{% if reading_posts %}
<ul class="summary">
  {% for post in reading_posts %}
  <li class="chapter">
    <a href="{{ post.url }}">{{ post.date | date: "%y%m%d" }} · {{ post.title }}</a>
  </li>
  {% endfor %}
</ul>
{% else %}
아직 독서 카테고리 글이 없습니다.
{% endif %}
