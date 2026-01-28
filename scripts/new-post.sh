#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -lt 2 ]; then
  echo "사용법: ./scripts/new-post.sh <카테고리> <제목>"
  echo "예시: ./scripts/new-post.sh 운동 \"5분 스트레칭\""
  exit 1
fi

category="$1"
title="$2"
date_str="$(date +%Y-%m-%d)"

slug="$(printf "%s" "$title" \
  | tr ' ' '-' \
  | tr -d '"' \
  | sed 's#[/\\]#-#g')"

post_dir="_posts"
post_path="${post_dir}/${date_str}-${slug}.md"

if [ -f "$post_path" ]; then
  echo "이미 존재하는 파일입니다: $post_path"
  exit 1
fi

mkdir -p "$post_dir"

cat > "$post_path" <<EOF
---
layout: single
title: "$title"
categories: [$category]
classes: wide
---

## 오늘의 기록
- 

## 느낀 점
- 
EOF

echo "생성 완료: $post_path"
