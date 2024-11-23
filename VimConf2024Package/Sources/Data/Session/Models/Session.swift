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
}
