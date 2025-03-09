import SwiftUI
import SessionFeature
import RoutingCore

@Observable
final class DefaultRouter {}

extension DefaultRouter: Router {
    func navigate(to destination: RoutingCore.Destination) -> some View {
        switch destination {
        case let .sessionDetail(sessionID):
            SessionDetailScreen(sessionID: sessionID)
        }
    }
}
