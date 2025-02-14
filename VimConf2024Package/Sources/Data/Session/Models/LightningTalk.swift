package import Foundation

package struct LightningTalk: Identifiable, Sendable {
    package let id: UUID
    package let title: String
    package let abstract: String
    package let language: Language
    package let speaker: LightningTalkSpeaker
}

package extension LightningTalk {
    static let mimikun: Self = .init(
        id: UUID(),
        title: "\"you can setting\" with rocks.nvim",
        abstract: "In Japan (vim-jp), plugins that “you have to configure everything yourself” have gained a place as the de facto standard, but they are a pain because you have to configure everything yourself. I’d like to introduce rocks.nvim, which was created based on the concept that “you don’t have to configure everything yourself, rather the plugin author should do it.”",
        language: .japanese,
        speaker: .mimikun
    )
    static let omochice: Self = .init(
        id: UUID(),
        title: ".vimrc and my belief about it",
        abstract: """
        “あなたのvimrcの信念は何ですか”

        筆者は数年vimを使い続けており、その間に学生から社会人へとライフステージが変化しました。

        学生の間は現在と比較して無限とも思える時間があったため、様々な試行錯誤ができましたが、今となっては限られた時間でvimrcをメンテナンスする必要が出てきました。

        その中で、変えざるを得なかった信念も幾つかありますが、変わらなかった信念もあります。

        本発表ではこれまでのvim生の中で変化した信念、変化しなかった信念とその信念を実現するための手段としてのプラグイン作成についてお話しします。
        """,
        language: .japanese,
        speaker: .omochice
    )
    static let kuuote: Self = .init(
        id: UUID(),
        title: "Plugin dependency management with Nix",
        abstract: "LSPクライアントやnvim-treesitter、denops.vimやskkeletonなど外部に依存するプログラムやデータが必要なプラグインは通常のVimプラグインと比べ管理が困難です。Nixというこの課題をユニークなアプローチで解決する手段について紹介します。",
        language: .japanese,
        speaker: .kuuote
    )
    static let uhooi: Self = .init(
        id: UUID(),
        title: "Develop iOS apps with Neovim",
        abstract: """
        みなさんはVim/Neovimでどのようなプログラミング言語を使い、何のシステムを開発しているでしょうか？

        おそらくほとんどの方がサーバーサイドやCLIツールを開発しているでしょう。

        しかし私はiOSアプリ開発をメインで行っているエンジニアです。 何とかしてNeovimを活かせないかと模索した結果、複数のプラグインやプロトコルを用いることで、ある程度は開発できるようになりました。

        本LTではそのために必要な技術を紹介します。 LSPはほとんどの方が知っていそうなので、DAPを中心に説明するつもりです。
        """,
        language: .japanese,
        speaker: .uhooi
    )
    static let kazumaInagaki: Self = .init(
        id: UUID(),
        title: "Future-Proof Your Vim plugins: Strategies for Robust Testing",
        abstract: """
        既存のコードに新機能を追加したり、バグを修正したりする際に、意図せず他の機能に影響を与えてしまうことは避けなければなりません。 この課題を克服するために、自動テストの導入が欠かせません。

        本発表では、Vim プラグイン開発における自動テストの重要性を確認し、テスティングフレームワークの選定方法や具体的なテストケースの作成方法、 さらにはメンテナンスを容易にするための効率的なフローについて詳しく解説します。 既存のコードの品質を向上させ、新機能の追加やバグ修正をより安全に行える方法をお伝えします。
        """,
        language: .japanese,
        speaker: .kazumaInagaki
    )
    static let satoruKitaguchi: Self = .init(
        id: UUID(),
        title: "Tips for Navigating and Exploring Vim's Help",
        abstract: "Vim’s help is a wealth of information, but navigating it can sometimes feel overwhelming. What if using it could be not only easier but enjoyable? In this session, I’ll share practical tips to make the help system more approachable, along with hidden gems that reveal the more intriguing aspects of Vim. From surprising design insights to historical tidbits, you’ll leave with the confidence and curiosity to explore Vim’s help like never before. Ready to turn Vim’s help into your favorite tool?",
        language: .english,
        speaker: .satoruKitaguchi
    )
}
