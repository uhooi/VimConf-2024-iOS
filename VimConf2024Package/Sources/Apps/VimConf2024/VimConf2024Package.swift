public import SwiftUI
import TimetableFeature
import RoutingCore

public struct RootScreen: View {
    @State private var router = DefaultRouter()

    public var body: some View {
        NavigationStack {
            TimetableScreen<DefaultRouter>()
                .environment(router)
        }
    }

    public init() {}
}
