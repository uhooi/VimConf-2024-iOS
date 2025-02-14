package import SwiftUI
import TimetableData

// MARK: - Actions

enum TimetableScreenAction {
}

enum TimetableScreenAsyncAction {
    case task
}

// MARK: - View

package struct TimetableScreen: View {
    @State private var viewModel: TimetableViewModel

    package var body: some View {
        TimetableView(
            timetables: viewModel.uiState.timetables
        )
        .navigationTitle("Time table") // TODO: Localize
        .navigationDestination(for: Timetable.self) { timetable in
            Text("TODO: Show session") // TODO: Show session
        }
        .task {
            await viewModel.sendAsync(.screen(.task))
        }
    }

    package init() {
        self.viewModel = TimetableViewModel()
    }
}
