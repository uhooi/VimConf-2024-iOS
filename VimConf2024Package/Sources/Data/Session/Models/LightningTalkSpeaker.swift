package struct LightningTalkSpeaker: Sendable {
    package let name: String
}

// MARK: - Internals

extension LightningTalkSpeaker {
    static let mimikun: Self = .init(name: "mimikun")
    static let omochice: Self = .init(name: "Omochice")
    static let kuuote: Self = .init(name: "kuuote")
    static let uhooi: Self = .init(name: "uhooi")
    static let kazumaInagaki: Self = .init(name: "Kazuma Inagaki")
    static let satoruKitaguchi: Self = .init(name: "Satoru Kitaguchi")
}
