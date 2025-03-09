package import SwiftUI

@MainActor
package protocol Router: AnyObject, Observable, Sendable {
    associatedtype DestinationType: View
    func navigate(to destination: Destination) -> DestinationType
}
