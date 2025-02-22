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
    }

    package init?(
        sessionID: String
    ) {
        guard let viewModel = SessionDetailViewModel(
            sessionID: sessionID
        ) else {
            return nil
        }
        self.viewModel = viewModel
    }
}

