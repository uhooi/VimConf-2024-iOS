import Foundation
import Observation
import SessionData

// MARK: - UI state

struct SessionDetailUiState {
    let session: Session
}

// MARK: - Actions

enum SessionDetailAction {
    case screen(_ action: SessionDetailScreenAction)
    case view(_ action: SessionDetailViewAction)
}

enum SessionDetailAsyncAction {
    case screen(_ asyncAction: SessionDetailScreenAsyncAction)
    case view(_ asyncAction: SessionDetailViewAsyncAction)
}

// MARK: - Error

enum SessionDetailError: LocalizedError {
}

// MARK: - View model

@MainActor @Observable
final class SessionDetailViewModel {
    private(set) var uiState: SessionDetailUiState

    init?(
        sessionID: String,
        sessionRepository: some SessionRepository = DefaultSessionRepository.shared
    ) {
        guard let session = try? sessionRepository.session(by: sessionID) else {
            return nil
        }
        self.uiState = SessionDetailUiState(
            session: session
        )
    }

    func send(_ action: SessionDetailAction) {
//        switch action {
//        case let .screen(screenAction):
//            switch screenAction {
//            }
//
//        case let .view(viewAction):
//            switch viewAction {
//            }
//        }
    }

    func sendAsync(_ asyncAction: SessionDetailAsyncAction) async {
//        switch asyncAction {
//        case let .screen(screenAsyncAction):
//            switch screenAsyncAction {
//            }
//
//        case let .view(viewAsyncAction):
//            switch viewAsyncAction {
//            }
//        }
    }
}
