package import SwiftUI

@MainActor
package protocol Router: Sendable, Observable {
    associatedtype DestinationType: View
    func navigate(to destination: Destination) -> DestinationType
}

extension EnvironmentValues {
    package var router: any Router {
        get { self[RouterKey.self] }
        set { self[RouterKey.self] = newValue }
    }
}

struct RouterKey: EnvironmentKey {
    static let defaultValue: any Router = MockRouter()
}

// MARK: - Privates

private struct MockRouter {}

extension MockRouter: Router {
    func navigate(to destination: Destination) -> some View {
        fatalError("Don't use mock.")
    }
}
