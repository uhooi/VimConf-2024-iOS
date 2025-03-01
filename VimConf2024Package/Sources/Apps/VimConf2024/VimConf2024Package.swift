public import SwiftUI
import TimetableFeature
import RoutingCore

public struct RootScreen: View {
    private let router = DefaultRouter()

    public var body: some View {
        NavigationStack {
            TimetableScreen<DefaultRouter>()
                .environment(router)
        }
    }

    public init() {}
}
