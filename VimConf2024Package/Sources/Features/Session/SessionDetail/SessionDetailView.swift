import SwiftUI
import SessionData

// MARK: - Actions

enum SessionDetailViewAction {
}

enum SessionDetailViewAsyncAction {
}

// MARK: - View

struct SessionDetailView: View {
    let session: Session

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text(session.language.text) // TODO: Share
                    .font(.caption.bold())
                    .foregroundStyle(.white)
                    .padding(.vertical, 4)
                    .padding(.horizontal, 6)
                    .background(session.language.backgroundColor)
                    .clipShape(.rect(cornerRadius: 4))

                if let abstract = session.abstract {
                    VStack(spacing: 8) {
                        Text("Abstract") // TODO: Localize
                            .font(.title2.bold())
                            .frame(maxWidth: .infinity, alignment: .leading)

                        Text(abstract)
                            .font(.body)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }

                VStack(spacing: 8) {
                    Text("Speaker") // TODO: Localize
                        .font(.title2.bold())
                        .frame(maxWidth: .infinity, alignment: .leading)

                    VStack(spacing: 4) {
                        Text(session.speaker.name)
                            .font(.title3)
                            .frame(maxWidth: .infinity)

                        AsyncImage(url: session.speaker.imageURL) { phase in
                            switch phase {
                            case .empty:
                                Color.gray
                            case .success(let image):
                                image
                                    .resizable()
                            case .failure:
                                Color.red
                            @unknown default:
                                fatalError("Add case: \(phase)")
                            }
                        }
                        .scaledToFit()
                    }

                    Text(session.speaker.description)
                        .font(.body)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
            .padding()
        }
    }
}
