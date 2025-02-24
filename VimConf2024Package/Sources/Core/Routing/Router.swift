package import SwiftUI

@MainActor
package protocol Router: Sendable, ObservableObject {
    associatedtype DestinationType: View
    func navigate(to destination: Destination) -> DestinationType
}
