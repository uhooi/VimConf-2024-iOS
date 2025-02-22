import Foundation

protocol SessionDataSource: Sendable {
    func session(by id: String) throws -> Session?
    func favoriteSessions() async throws -> [Session]
}

final class DefaultSessionDataSource {
    static let shared = DefaultSessionDataSource()

    private init() {}
}

extension DefaultSessionDataSource: SessionDataSource {
    func session(by id: String) throws -> Session? {
        sessions.first { $0.id == id }
    }

    // TODO: Impl
    func favoriteSessions() async throws -> [Session] {
        []
    }
}

// MARK: - Privates

private extension DefaultSessionDataSource {
    var sessions: [Session] {
        [
            .opening,
            .keynote1,
            .keynote2,
            .masteringQuickfix,
            .hackingVimScript,
            .switchBetweenProjectsLikeANinja,
            .vimMeetsLocalLLM,
            .creatingTheVimVersionOfVSCodeDevContainerExtension,
            .neovimforFrontendDevelopers,
            .buildingNeovimPlugins,
            .cannotHelpFallingInVim,
            .theLatestDarkDenoPoweredPlugins,
            .closing,
        ]
    }
}
