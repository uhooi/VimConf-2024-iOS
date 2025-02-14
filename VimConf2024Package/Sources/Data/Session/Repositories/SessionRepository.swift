package protocol SessionRepository: Sendable {
    func favoriteSessions() async throws -> [Session]
}

package final class DefaultSessionRepository {
    package static let shared = DefaultSessionRepository()

    private let sessionDataSource: any SessionDataSource

    private init(
        sessionDataSource: some SessionDataSource = DefaultSessionDataSource.shared
    ) {
        self.sessionDataSource = sessionDataSource
    }
}

extension DefaultSessionRepository: SessionRepository {
    package func favoriteSessions() async throws -> [Session] {
        try await sessionDataSource.favoriteSessions()
    }
}
