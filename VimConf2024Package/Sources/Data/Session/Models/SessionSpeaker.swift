package import Foundation

package struct SessionSpeaker: Sendable {
    package let name: String
    package let imageURL: URL?
    package let description: String
    package let gitHubURL: URL?
    package let xURL: URL?
}

// MARK: - Internals

extension SessionSpeaker {
    static let mopp: Self = .init(
        name: "mopp",
        imageURL: nil,
        description: "",
        gitHubURL: nil,
        xURL: nil
    )
    static let christianBrabandt: Self = .init(
        name: "Christian Brabandt",
        imageURL: nil,
        description: "",
        gitHubURL: .init(string: "https://github.com/chrisbra"),
        xURL: nil
    )
    static let tjDeVries: Self = .init(
        name: "TJ DeVries",
        imageURL: nil,
        description: "",
        gitHubURL: .init(string: "https://github.com/tjdevries"),
        xURL: nil
    )
    static let daisuzu: Self = .init(
        name: "daisuzu",
        imageURL: nil,
        description: "",
        gitHubURL: nil,
        xURL: nil
    )
    static let kotaKato: Self = .init(
        name: "Kota Kato",
        imageURL: nil,
        description: "",
        gitHubURL: nil,
        xURL: nil
    )
    static let yukiIto: Self = .init(
        name: "Yuki Ito",
        imageURL: nil,
        description: "",
        gitHubURL: nil,
        xURL: nil
    )
    static let yuys13: Self = .init(
        name: "yuys13",
        imageURL: nil,
        description: "",
        gitHubURL: nil,
        xURL: nil
    )
    static let mikoto2000: Self = .init(
        name: "mikoto2000",
        imageURL: nil,
        description: "",
        gitHubURL: nil,
        xURL: nil
    )
    static let ryoppippi: Self = .init(
        name: "ryoppippi",
        imageURL: nil,
        description: "",
        gitHubURL: nil,
        xURL: nil
    )
    static let twoKAbhishek: Self = .init(
        name: "2KAbhishek",
        imageURL: nil,
        description: "",
        gitHubURL: nil,
        xURL: nil
    )
    static let alisue: Self = .init(
        name: "Λlisue",
        imageURL: nil,
        description: "",
        gitHubURL: nil,
        xURL: nil
    )
    static let shougoMatsushita: Self = .init(
        name: "Shougo Matsushita",
        imageURL: nil,
        description: "",
        gitHubURL: nil,
        xURL: nil
    )
}
