package enum Language: Sendable {
    case japanese
    case english
    
    // TODO: Localize
    package var text: String {
        switch self {
        case .japanese: "Japanese"
        case .english: "English"
        }
    }
}
