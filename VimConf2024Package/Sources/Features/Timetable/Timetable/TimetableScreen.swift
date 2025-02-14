package import SwiftUI

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
        .task {
            await viewModel.sendAsync(.screen(.task))
        }
    }

    package init() {
        self.viewModel = TimetableViewModel()
    }
}
