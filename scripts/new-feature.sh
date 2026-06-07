#!/bin/bash
# 사용법: ./scripts/new-feature.sh <기능명>
# example-feature의 spec/daily-log 양식을 복사해 새 기능 폴더를 만든다.
set -e
FEATURE="$1"
if [ -z "$FEATURE" ]; then
  echo "사용법: ./scripts/new-feature.sh <기능명>"
  exit 1
fi
DEST="docs/features/$FEATURE"
if [ -d "$DEST" ]; then
  echo "이미 존재함: $DEST"
  exit 1
fi
mkdir -p "$DEST"
cp docs/features/example-feature/spec.md "$DEST/spec.md"
cp docs/features/example-feature/daily-log.md "$DEST/daily-log.md"
echo "생성 완료: $DEST"
echo "backlog.md에 추가: - [ ] $FEATURE (FR-?) -> $DEST/"
