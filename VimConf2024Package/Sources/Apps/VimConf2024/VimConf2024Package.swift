public import SwiftUI
import TimetableFeature
import RoutingCore

public struct RootScreen: View {
    private let router: some Router = DefaultRouter()

    public var body: some View {
        NavigationStack {
            TimetableScreen()
                .environment(\.router, router)
        }
    }

    public init() {}
}
