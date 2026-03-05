# T-20260305-009: homebrew-tap workflow修正 - PR/auto-merge廃止→main直push化

## 原因分析
- 失敗run: https://github.com/boxp/homebrew-tap/actions/runs/22719013149/job/65875881108
- エラー: `GitHub Actions is not permitted to create or approve pull requests (createPullRequest)`
- GITHUB_TOKENにPR作成権限がないため `gh pr create` が失敗

## 修正内容
1. `pull-requests: write` 権限を削除（不要になるため）
2. 「Check for existing PR (idempotency)」ステップを削除（PR不要のため）
3. 「Update Formula and create PR」ステップをmain直push方式に変更
   - ブランチ作成を廃止、main上で直接commit+push
   - 冪等性は `git diff --cached --quiet` で維持（同一内容ならスキップ）
4. 「Enable auto-merge」ステップを削除

## 維持する安全策
- payload validation（version/tag/SHA256フォーマット検証）
- concurrency制御（同一version並行実行防止）
- 同version no-op（formulaが同一なら何もしない）
- `contents: write` 権限明示
