package import SwiftUI
import SessionData

// MARK: - Actions

enum SessionDetailScreenAction {
}

enum SessionDetailScreenAsyncAction {
}

// MARK: - View

package struct SessionDetailScreen: View {
    @State private var viewModel: SessionDetailViewModel

    package var body: some View {
        SessionDetailView(session: viewModel.uiState.session)
            .navigationTitle(viewModel.uiState.session.title)
    }

    package init(
        sessionID: String
    ) {
        self.viewModel = SessionDetailViewModel(
            sessionID: sessionID
        )
    }
}
