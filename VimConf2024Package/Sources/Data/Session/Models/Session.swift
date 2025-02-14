package import Foundation

package struct Session: Identifiable, Sendable {
    package let id: UUID
    package let title: String
    package let abstract: String
    package let language: Language
    package let speaker: SessionSpeaker
}

package extension Session {
    static let opening: Self = .init(
        id: UUID(),
        title: "Opening",
        abstract: "",
        language: .english,
        speaker: .mopp
    )
    static let keynote1: Self = .init(
        id: UUID(),
        title: "Keynote - The new Vim project - What has changed after Bram",
        abstract: "The Vim project has changed a bit within the last year for various reasons. The talk will describe what changed within the Vim project, how it is currently managed, what we have achieved so far, how Vim is now developed and what might be ahead in the future.",
        language: .english,
        speaker: .christianBrabandt
    )
    static let keynote2: Self = .init(
        id: UUID(),
        title: "Keynote - (Neo)Vim Made Me a Better Software Developer",
        abstract: "When you mention “vim” and “speed”, people immediately think of editing text quickly, navigating efficiently or the raw performance of the editor. Instead, I want to talk about how exploring, customizing, and iterating within Vim itself changed my career.",
        language: .english,
        speaker: .tjDeVries
    )
    static let masteringQuickfix: Self = .init(
        id: UUID(),
        title: "Mastering Quickfix",
        abstract: "Dive deep into one of Vim’s most powerful yet often underutilized features: quickfix. This talk will guide you through the journey from basic usage to advanced techniques, showing how quickfix can dramatically enhance your editing efficiency.",
        language: .english,
        speaker: .daisuzu
    )
    static let hackingVimScript: Self = .init(
        id: UUID(),
        title: "Hacking Vim script",
        abstract: "By understanding the internal implementation of Vim script, we aim to explore more effective ways to write Vim script. As of 2024, there are two main implementations of Vim script: one by Vim and a derivative implementation by Neovim. Additionally, with the introduction of Vim9 script into Vim, the processing of built-in functions has become more complex due to the intertwined handling required for both scripts. In this presentation, we will delve into the internal workings of Vim script and Vim9 script, with the goal of empowering you to hack Vim script more effectively.",
        language: .japanese,
        speaker: .kotaKato
    )
    static let switchBetweenProjectsLikeANinja: Self = .init(
        id: UUID(),
        title: "Switch between projects like a Ninja 🥷",
        abstract: "Let’s say you’re writing code in an application project, and are suddenly alerted to an issue that requires you to fix a configuration file that resides in another infrastructure project. In such situations, you want to switch to the infrastructure project as soon as possible, and after fixing the issue, you want to return to what you were doing in the application project. In this talk, I will show my tricks and tips for switching between projects quickly and smoothly in Vim. I will also demystify the “Session” feature in Vim/Neovim, that is the key for switching between projects.",
        language: .english,
        speaker: .yukiIto
    )
    static let vimMeetsLocalLLM: Self = .init(
        id: UUID(),
        title: "Vim meets Local LLM: Edit Text beyond the Speed of Thought",
        abstract: "Are you editing text at the speed of thought? I’m editing text at the speed of thought, but my thoughts often come to a standstill. By having an LLM write text for me during these pauses in thought, I can edit text faster than the speed of thought. In this presentation, I will share how to create a code generation plugin using a local LLM and the challenges involved. Let’s actively develop similar plugins together and improve our productivity in Vim.",
        language: .japanese,
        speaker: .yuys13
    )
    static let creatingTheVimVersionOfVSCodeDevContainerExtension: Self = .init(
        id: UUID(),
        title: "Creating the Vim Version of VSCode Dev Container Extension: Why and How",
        abstract: "Vim is great. Containers are great too. But combining them is not as easy as VSCode. We have created a few tools to make it easier to combine them for development. I will talk about why I made the tool, its overview, how it works, and the challenges I faced.",
        language: .japanese,
        speaker: .mikoto2000
    )
    static let neovimforFrontendDevelopers: Self = .init(
        id: UUID(),
        title: "Neovim for Frontend Developers: Boosting Productivity and Creativity",
        abstract: """
        In the world of frontend development, VSCode currently reigns as the mainstream editor. However, Neovim, with its high customizability and lightweight nature, has the potential to provide a development experience that rivals or even surpasses that of VSCode.
        
        This presentation will explore how to achieve a development experience superior to VSCode using Neovim. We’ll cover LSP setup, AI-powered tools, and efficient workflows using macros, snippets, and terminal integration. Practical techniques and browser integration will be demonstrated in a live coding session, showcasing how Neovim can significantly boost productivity in modern frontend development.
        """,
        language: .english,
        speaker: .ryoppippi
    )
    static let buildingNeovimPlugins: Self = .init(
        id: UUID(),
        title: "Building Neovim Plugins: A Journey from Novice to Pro",
        abstract: """
        ## Neovim plugin development, building your own plugins for fun and profit:
        Neovim’s extensibility makes it a powerful platform for building custom plugins tailored to your unique needs.
        
        In this talk, I’ll guide you through the process of developing Neovim plugins, from setting up your development environment to creating feature-rich extensions that enhance your editing experience and tips on how best to publish and maintain them.
        
        Whether you’re looking to contribute to an existing plugin, automate your repetitive tasks, integrate neovim with other tools you use, or customize your editor’s behavior, this session will equip you with the knowledge and tools to build your own Neovim plugins like a pro.
        
        All while having fun along the way!
        """,
        language: .english,
        speaker: .twoKAbhishek
    )
    static let cannotHelpFallingInVim: Self = .init(
        id: UUID(),
        title: "Can't Help Falling in Vim ~ Wise men say only fools reinvent the wheel, but I can't help building yet another fuzzy finder: Fall",
        abstract: """
        “Yet another”
        
        We programmers often encounter the phrase “Yet another.” For example, a search for “Yet another” on GitHub will return around 37,000 repositories. Why do programmers love using this phrase so much? Personally, I often use it as a light-hearted excuse, as if to say, “Yes, I know I’m reinventing the wheel.”
        
        Which brings me to what I’ll be discussing at VimConf 2024: a new “Yet another” fuzzy finder called Fall. Fully aware that I’m reinventing the wheel, I even started Fall’s README with “Yet another.”
        
        Wise men say not to reinvent the wheel, but I can’t help doing exactly that. In my presentation, I’ll explore the world of existing fuzzy finders, share what I look for in one, and discuss the design philosophy behind Fall.
        """,
        language: .english,
        speaker: .alisue
    )
    static let theLatestDarkDenoPoweredPlugins: Self = .init(
        id: UUID(),
        title: "The latest dark deno powered plugins",
        abstract: """
        I have created the dark deno powered plugins. What is the dark deno powered?
        
        It is:
        
            Complex
        
            Hard
        
            You need to configure all
        
            Extensible
        
            Created by denops.vim with Deno
        
            Real minimal
        
        I introduce the plugins and my philosophy’s.
        """,
        language: .english,
        speaker: .shougoMatsushita
    )
    static let closing: Self = .init(
        id: UUID(),
        title: "Closing",
        abstract: "",
        language: .english,
        speaker: .mopp
    )
}
