package import SwiftUI
import RoutingCore
import TimetableData

// MARK: - Actions

enum TimetableScreenAction {
}

enum TimetableScreenAsyncAction {
    case task
}

// MARK: - View

package struct TimetableScreen: View {
    @Environment(\.router) private var router
    @State private var viewModel: TimetableViewModel

    package var body: some View {
        TimetableView(
            timetables: viewModel.uiState.timetables
        )
        .navigationTitle("Time table") // TODO: Localize
        .navigationDestination(for: Timetable.self) { timetable in
            if let sessionID = timetable.session?.id {
                router.navigate(to: .sessionDetail(sessionID))
            }
        }
        .task {
            await viewModel.sendAsync(.screen(.task))
        }
    }

    package init() {
        self.viewModel = TimetableViewModel()
    }
}
