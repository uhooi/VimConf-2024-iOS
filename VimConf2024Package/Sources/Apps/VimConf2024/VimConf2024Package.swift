public import SwiftUI
import TimetableFeature

public struct RootScreen: View {
    public var body: some View {
        NavigationStack {
            TimetableScreen()
        }
    }

    public init() {}
}
