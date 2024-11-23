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
}
