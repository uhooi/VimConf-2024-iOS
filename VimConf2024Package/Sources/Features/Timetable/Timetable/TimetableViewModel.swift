import Foundation
import Observation
import TimetableData

// MARK: UI state

struct TimetableUiState {
    var timetables: [Timetable] = []
}

// MARK: - Actions

enum TimetableAction {
    case screen(_ action: TimetableScreenAction)
    case view(_ action: TimetableViewAction)
}

enum TimetableAsyncAction {
    case screen(_ asyncAction: TimetableScreenAsyncAction)
    case view(_ asyncAction: TimetableViewAsyncAction)
}

// MARK: - Error

enum TimetableError: LocalizedError {
}

@MainActor @Observable
final class TimetableViewModel {
    private(set) var uiState: TimetableUiState

    private let timetableRepository: any TimetableRepository

    init(
        timetableRepository: some TimetableRepository = DefaultTimetableRepository.shared
    ) {
        self.uiState = TimetableUiState()
        self.timetableRepository = timetableRepository
    }

    func send(_ action: TimetableAction) {
        switch action {
        case let .screen(screenAction):
            switch screenAction {
            }

        case let .view(viewAction):
            switch viewAction {
            case .onShowSessionButtonClick:
                break // TODO:
            }
        }
    }

    func sendAsync(_ asyncAction: TimetableAsyncAction) async {
        switch asyncAction {
        case let .screen(screenAsyncAction):
            switch screenAsyncAction {
            case .task:
                do {
                    uiState.timetables = try await timetableRepository.timetables()
                } catch {
                    // TODO: Handle error
                }
            }

        case let .view(viewAsyncAction):
            switch viewAsyncAction {
            }
        }
    }
}
