package import Foundation

package struct Session: Identifiable, Sendable {
    package let id: UUID
    package let title: String
    package let abstract: String
    package let language: Language
    package let speaker: SessionSpeaker
}

extension Session {
    package static let opening: Self = .init(
        id: UUID(),
        title: "Opening",
        abstract: "",
        language: .english,
        speaker: .init(
            name: "mopp",
            imageURL: nil,
            description: "",
            gitHubURL: nil,
            xURL: nil
        )
    )
}
