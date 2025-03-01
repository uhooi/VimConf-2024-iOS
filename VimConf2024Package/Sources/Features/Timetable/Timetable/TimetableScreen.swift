package import SwiftUI
package import RoutingCore
import TimetableData

// MARK: - Actions

enum TimetableScreenAction {
}

enum TimetableScreenAsyncAction {
    case task
}

// MARK: - View

package struct TimetableScreen<R: Router>: View {
    @Environment(R.self) private var router
    @State private var viewModel: TimetableViewModel

    package var body: some View {
        TimetableView(
            timetables: viewModel.uiState.timetables
        )
        .navigationTitle("Time table") // TODO: Localize
        .navigationDestination(for: String.self) { sessionID in
            router.navigate(to: .sessionDetail(sessionID))
        }
        .task {
            await viewModel.sendAsync(.screen(.task))
        }
    }

    package init() {
        self.viewModel = TimetableViewModel()
    }
}
