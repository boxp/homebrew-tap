# T-20260305-007: homebrew-tap repository_dispatch受信ワークフロー

## 目的
boxp/ceeker からの `repository_dispatch` イベントを受信し、
Formula の更新 PR を自動作成するワークフローを追加する。

## 実装内容
- `.github/workflows/update-formula.yml` を新規作成
- `repository_dispatch` (type: `update-ceeker-formula`) でトリガー
- payload 検証 → 冪等化チェック → Formula 生成 → PR 作成 → auto-merge

## 必要 Secret/権限
- 追加 Secret 不要（`GITHUB_TOKEN` のみ使用）

## ロールバック手順
1. `.github/workflows/update-formula.yml` を削除
2. ceeker 側の release workflow を旧方式（直接 push + PR）に戻す
