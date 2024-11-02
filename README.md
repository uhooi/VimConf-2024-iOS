# VimConf-2024-iOS

[![Release](https://img.shields.io/github/v/release/uhooi/VimConf-2024-iOS)](https://github.com/uhooi/VimConf-2024-iOS/releases/latest)
[![Platform](https://img.shields.io/badge/platform-iOS-lightgrey)](https://github.com/uhooi/VimConf-2024-iOS)
[![X](https://img.shields.io/twitter/follow/the_uhooi?style=social)](https://x.com/the_uhooi)

VimConf 2024の非公式iOSアプリです。

## 目次

- [スクリーンショット](#スクリーンショット)
- [開発](#開発)
- [貢献](#貢献)

## スクリーンショット

<details><summary>スクリーンショット</summary>

### ライト

TBD

### ダーク

TBD

</details>

## 開発

誰でもこのプロジェクトを開発できます。

### 必要条件

- macOS 14.5+
- Xcode 16.0 (Swift 6.0)
- Make

### 構成

- UIの実装: SwiftUI
- アーキテクチャ: MVVM
- ブランチモデル: GitHub flow

### セットアップ

1. このプロジェクトをクローンします。  
    ```shell
    $ git clone https://github.com/uhooi/VimConf-2024-iOS.git
    $ cd VimConf-2024-iOS
    ```

2. Swiftプロジェクトの高速ビルドを有効にします。（任意）  
    ```shell
    $ defaults write com.apple.dt.XCBuild EnableSwiftBuildSystemIntegration 1
    ```

3. `make setup` を実行します。  
セットアップが完了すると、自動的にXcodeでワークスペースが開きます。

### モジュール分割

[Loki](https://github.com/uhooi/Loki?tab=readme-ov-file#モジュール分割) に準じます。

### コーディングルール

[Loki](https://github.com/uhooi/Loki?tab=readme-ov-file#コーディングルール) に準じます。

### パッケージ管理

[Loki](https://github.com/uhooi/Loki?tab=readme-ov-file#パッケージ管理) に準じます。

## 貢献

貢献をお待ちしています :relaxed:

- [新しいイシュー](https://github.com/uhooi/VimConf-2024-iOS/issues/new)
- [新しいプルリクエスト](https://github.com/uhooi/VimConf-2024-iOS/compare)
