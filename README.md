# Spiral-AI Project Template

AI 에이전트(Claude Code 등)와 함께 1인 개발을 위한 프로젝트 템플릿.
Spiral 모델을 베이스로 하고, Karpathy의 코딩 규율을 스킬로 결합했다.
전체 방법론은 **[docs/methodology.md](docs/methodology.md)** 참조.

## 빠른 시작

1. **"Use this template"** 로 새 repo 생성 (또는 이 폴더를 복사).
2. `docs/domain.md` 를 **가장 먼저** 채운다 (도메인 지식 — 직접 작성).
3. `docs/requirements.md` 에 기능(FR)·비기능(NFR) 요구사항을 적는다.
4. `CLAUDE.md` 의 `<...>` 플레이스홀더(개요·스택·구조·컨벤션)를 채운다.
5. 기능 시작: `./scripts/new-feature.sh <기능명>` → backlog.md에 등록.

## 구조

```
.
├── CLAUDE.md                          AI가 매 세션 읽는 프로젝트 컨텍스트 + 훅
├── .claude/skills/karpathy-guidelines/
│   └── SKILL.md                       코딩 실행 규율 (구현 작업 시 자동 로드)
├── docs/
│   ├── methodology.md                 방법론 전문
│   ├── domain.md                      도메인 지식 (먼저 작성)
│   ├── requirements.md                FR / NFR
│   ├── backlog.md                     기능 순서·상태
│   └── features/<기능명>/
│       ├── spec.md                    위험 → 설계 → 함수 → 검증
│       └── daily-log.md               작업 기록
└── scripts/
    └── new-feature.sh                 기능 폴더 생성기
```

## 한 사이클 (기능 1개)

`① 목표(DoD 선택) → ② 위험분석(spec 작성·승인) → ③ 개발·검증(tests-first) → ④ 기록·계획`

핵심은 **②의 스펙 리뷰 게이트**다. 이 단계를 건너뛰면 바이브 코딩과 다를 게 없다.

## 채울 것 / 그대로 둘 것

| 그대로 둔다 | 매번 채운다 |
|---|---|
| SKILL.md, methodology.md, CLAUDE.md의 행동 규칙 | domain.md, requirements.md |
| spec/daily-log 양식 구조 | CLAUDE.md의 개요·스택·구조·컨벤션 |
