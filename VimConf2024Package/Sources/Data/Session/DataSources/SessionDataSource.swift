import Foundation

protocol SessionDataSource: Sendable {
    func favoriteSessions() async throws -> [Session]
}

final class DefaultSessionDataSource {
    static let shared = DefaultSessionDataSource()

    private init() {}
}

extension DefaultSessionDataSource: SessionDataSource {
    // TODO: Impl
    func favoriteSessions() async throws -> [Session] {
        [
            .init(
                id: UUID(),
                title: "",
                abstract: "",
                language: .japanese,
                speaker: .init(
                    name: "",
                    imageURL: .init(string: ""),
                    description: "",
                    gitHubURL: .init(string: ""),
                    xURL: .init(string: "")
                )
            )
        ]
    }
}
