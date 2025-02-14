package import Foundation

package struct SessionSpeaker: Sendable {
    package let name: String
    package let imageURL: URL?
    package let description: String
    package let gitHubURL: URL?
    package let xURL: URL?
}

// MARK: - Internals

extension SessionSpeaker {
    static let mopp: Self = .init(
        name: "mopp",
        imageURL: nil,
        description: "",
        gitHubURL: nil,
        xURL: nil
    )
    static let christianBrabandt: Self = .init(
        name: "Christian Brabandt",
        imageURL: URL(string: "https://vimconf.org/2024/icon/christian.jpg"),
        description: """
        Christian Brabandt has been working in the IT industry for more than 20 years, mostly as consultant in various roles. He is currently employed with Ataccama and working as platform consultant in which role he has been using Vi(m) on several different platforms to support customers with their software stack.

        He got involved with Vim in the early 2000s and has been slowly becoming more and more active in the wider vim community from participating in various forums and mailing lists, Vim plugin development, bug reporting and later contributing patches regularly as well as helping with the infrastructure in the Vim project. Since 2023 he has become one of the main maintainers of the Vim project after the passing of long time leader and benevolent dictator for life Bram Moolenaar. In this role he has been helping steering the project and continuing the development of Vim trying to make sure the project remains active and healthy.
        """,
        gitHubURL: .init(string: "https://github.com/chrisbra"),
        xURL: nil
    )
    static let tjDeVries: Self = .init(
        name: "TJ DeVries",
        imageURL: URL(string: "https://vimconf.org/2024/icon/tj.jpg"),
        description: "TJ DeVries is a long time Neovim contributor and the author of telescope.nvim. He is currently a programming content creator who also happens to sell coffee beans over SSH. When he’s not exploring new programming languages or creating ways to configure Neovim with CSS, he enjoys spending time with his wife, three kids and goofy German Shepherd.",
        gitHubURL: .init(string: "https://github.com/tjdevries"),
        xURL: nil
    )
    static let daisuzu: Self = .init(
        name: "daisuzu",
        imageURL: URL(string: "https://vimconf.org/2024/icon/daisuzu.png"),
        description: "Server-side software engineer specializing in Go, based in Tokyo with over 15 years of Vim experience. Currently working on a massive codebase exceeding 1 million lines, where Vim is an indispensable tool for daily development. Has also contributed to Vim-related publications in the past. Co-organizer of gorilla.vim, a community event for Vim users focused on sharing knowledge, fostering connections, and practical learning.",
        gitHubURL: URL(string: "https://github.com/daisuzu"),
        xURL: URL(string: "https://x.com/dice_zu")
    )
    static let kotaKato: Self = .init(
        name: "Kota Kato",
        imageURL: URL(string: "https://vimconf.org/2024/icon/kato.jpg"),
        description: "Student at the University of Electro-Communications. I will be giving a presentation to introduce Vim from the perspective of a programming language.",
        gitHubURL: URL(string: "https://github.com/kat0h"),
        xURL: nil
    )
    static let yukiIto: Self = .init(
        name: "Yuki Ito",
        imageURL: URL(string: "https://vimconf.org/2024/icon/110y.jpg"),
        description: "Yuki is a software architect who promotes Platform Engineering, including API Platform, Cloud Infrastructure, CI/CD, and so on, for Newmo, Inc. He also acts as a Google Cloud Champion Innovator in the fields of Serverless App Development and Modern Architecture.",
        gitHubURL: URL(string: "https://github.com/110y"),
        xURL: URL(string: "https://x.com/mrno110")
    )
    static let yuys13: Self = .init(
        name: "yuys13",
        imageURL: URL(string: "https://vimconf.org/2024/icon/yuys13.jpg"),
        description: "I’m a car enthusiast and programmer. I can develop collama.nvim a little. Collama.nvim is a Neovim plugin that uses a local LLM for code generation. I hope to see more development of collama.nvim and similar plugins.",
        gitHubURL: URL(string: "https://github.com/yuys13"),
        xURL: nil
    )
    static let mikoto2000: Self = .init(
        name: "mikoto2000",
        imageURL: URL(string: "https://vimconf.org/2024/icon/mikoto2000.svg"),
        description: "I am a programmer by trade and hobby. I am always “getting started” on interesting things. Recently, I’ve been working with Tauri and submitting issues and pull requests. I joined in this conference to introduction devcontainer.vim.",
        gitHubURL: URL(string: "https://github.com/mikoto2000"),
        xURL: URL(string: "https://x.com/mikoto2000")
    )
    static let ryoppippi: Self = .init(
        name: "ryoppippi",
        imageURL: URL(string: "https://vimconf.org/2024/icon/ryoppippi.jpg"),
        description: "ryoppippi(りょっぴっぴ) is a passionate hobby coder who was born for this craft, with a deep love for Neovim, Svelte, and his wife. I’ll be at VimConf 2024 to share how Neovim can supercharge your frontend development workflow. See you in Akiba!",
        gitHubURL: URL(string: "https://github.com/ryoppippi"),
        xURL:  URL(string: "https://x.com/ryoppippi")
    )
    static let twoKAbhishek: Self = .init(
        name: "2KAbhishek",
        imageURL: URL(string: "https://vimconf.org/2024/icon/2kabhishek.jpg"),
        description: """
        Hi VimConf, I’m Abhishek Keshri, working with Incubyte as a Tech Lead. I have been using Vim and Neovim for over 6 years and have published a few plugins. I find joy in the command line and strive to develop efficient systems and workflows that help developers.

        I’m very excited to share my knowledge and learn from all of you.
        """,
        gitHubURL: URL(string: "https://github.com/2kabhishek"),
        xURL: URL(string: "https://x.com/2kabhishek")
    )
    static let alisue: Self = .init(
        name: "Λlisue",
        imageURL: URL(string: "https://vimconf.org/2024/icon/lambdalisue.png"),
        description: "A long-time Vim plugin developer and the creator of denops.vim, an ecosystem for Vim/Neovim plugins built on Deno. I joined this conference to share my ideas for a fuzzy finder and a new plugin built around that concept.",
        gitHubURL: URL(string: "https://github.com/lambdalisue"),
        xURL: URL(string: "https://x.com/lambdalisue")
    )
    static let shougoMatsushita: Self = .init(
        name: "Shougo Matsushita",
        imageURL: URL(string: "https://vimconf.org/2024/icon/Shougo.png"),
        description: "I have been contributing to the Vim community for many years and have extensive knowledge of both the core application and plugins. As a regular presenter at VimConf in the past, I haven’t had the opportunity to present for a long time due to the cancellation of VimConf. This time, to commemorate the revival of VimConf, I would like to introduce the plugins I have created and my plugin philosophy (real minimal) for the first time in a while.",
        gitHubURL: URL(string: "https://github.com/Shougo"),
        xURL: URL(string: "https://x.com/ShougoMatsu")
    )
}
