# T-20260304-001: boxp/homebrew-tap 対応（ceeker Homebrew配布）

## 目的
`brew tap boxp/tap && brew install ceeker` を成立させるため、`boxp/homebrew-tap` リポジトリを初期化し、`ceeker` Formula を追加する。

## 実装内容

### 1. リポジトリ初期化
- README.md を追加（tap の使い方を記載）

### 2. Formula/ceeker.rb 作成
- ceeker v0.0.8 リリースのバイナリ tar.gz を参照
- 対応プラットフォーム:
  - macOS ARM64 (Apple Silicon)
  - Linux AMD64
  - Linux ARM64
- sha256 は実ファイルから算出した正しい値を設定
- `bin.install` でバイナリ名をリネームして `ceeker` として配置
- テストブロックで `ceeker --version` を検証

### 3. SHA256 ハッシュ値
| Platform | SHA256 |
|----------|--------|
| darwin-arm64 | `040c12266c750ea9cad8c5ef72baa37a2babbffaca5f3c1a84c88a752b6eaa65` |
| linux-amd64 | `f5175e0ab6075b8bd2eaebecbc1c7a864de945aca3943efb0757b896f8639ae1` |
| linux-arm64 | `f9d9980088675c4146346174a457c27d6008de58fd4b63420e9c23ce7c562a9f` |

## ブランチ戦略
- main: 初期コミット（README.md）
- feat/add-ceeker-formula: Formula追加（PRで main へマージ）
