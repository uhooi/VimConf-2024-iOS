package import SwiftUI

package enum Language: Hashable, Sendable {
    case japanese
    case english
    
    // TODO: Localize
    package var text: String {
        switch self {
        case .japanese: "Japanese"
        case .english: "English"
        }
    }

    package var backgroundColor: Color {
        switch self {
        case .japanese: .teal
        case .english: .cyan
        }
    }
}
