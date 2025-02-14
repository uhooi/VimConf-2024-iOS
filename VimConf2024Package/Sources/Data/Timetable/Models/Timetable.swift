package import Foundation
package import SessionData

package struct Timetable: Identifiable, Sendable {
    package let id: UUID
    package let startDate: Date
    package let endDate: Date
    package let title: String
    package let session: Session?

    package var startTimeText: String {
        startDate.formatted(date: .omitted, time: .shortened)
    }
    package var endTimeText: String {
        endDate.formatted(date: .omitted, time: .shortened)
    }
}

// MARK: - Internals

extension Timetable {
    static let reception: Self = .init(
        id: UUID(),
        startDate: Date(timeIntervalSince1970: 1732321800),
        endDate: Date(timeIntervalSince1970: 1732323600),
        title: "Reception",
        session: nil
    )
    static let opening: Self = .init(
        id: UUID(),
        startDate: Date(timeIntervalSince1970: 1732323600),
        endDate: Date(timeIntervalSince1970: 1732324200),
        title: Session.opening.title,
        session: .opening
    )
    static let keynote1: Self = .init(
        id: UUID(),
        startDate: Date(timeIntervalSince1970: 1732324200),
        endDate: Date(timeIntervalSince1970: 1732327800),
        title: Session.keynote1.title,
        session: .keynote1
    )
    static let shortBreak1: Self = .init(
        id: UUID(),
        startDate: Date(timeIntervalSince1970: 1732327800),
        endDate: Date(timeIntervalSince1970: 1732328400),
        title: "Short break",
        session: nil
    )
    static let keynote2: Self = .init(
        id: UUID(),
        startDate: Date(timeIntervalSince1970: 1732328400),
        endDate: Date(timeIntervalSince1970: 1732330800),
        title: Session.keynote2.title,
        session: .keynote2
    )
    static let lunchBreak: Self = .init(
        id: UUID(),
        startDate: Date(timeIntervalSince1970: 1732330800),
        endDate: Date(timeIntervalSince1970: 1732334400),
        title: "Lunch break",
        session: nil
    )
    static let masteringQuickfix: Self = .init(
        id: UUID(),
        startDate: Date(timeIntervalSince1970: 1732334400),
        endDate: Date(timeIntervalSince1970: 1732335300),
        title: Session.masteringQuickfix.title,
        session: .masteringQuickfix
    )
    static let hackingVimScript: Self = .init(
        id: UUID(),
        startDate: Date(timeIntervalSince1970: 1732335300),
        endDate: Date(timeIntervalSince1970: 1732337100),
        title: Session.hackingVimScript.title,
        session: .hackingVimScript
    )
    static let switchBetweenProjectsLikeANinja: Self = .init(
        id: UUID(),
        startDate: Date(timeIntervalSince1970: 1732337100),
        endDate: Date(timeIntervalSince1970: 1732338000),
        title: Session.switchBetweenProjectsLikeANinja.title,
        session: .switchBetweenProjectsLikeANinja
    )
    static let shortBreak2: Self = .init(
        id: UUID(),
        startDate: Date(timeIntervalSince1970: 1732338000),
        endDate: Date(timeIntervalSince1970: 1732338900),
        title: "Short break",
        session: nil
    )
    static let vimMeetsLocalLLM: Self = .init(
        id: UUID(),
        startDate: Date(timeIntervalSince1970: 1732338900),
        endDate: Date(timeIntervalSince1970: 1732340100),
        title: Session.vimMeetsLocalLLM.title,
        session: .vimMeetsLocalLLM
    )
    static let creatingTheVimVersionOfVSCodeDevContainerExtension: Self = .init(
        id: UUID(),
        startDate: Date(timeIntervalSince1970: 1732340100),
        endDate: Date(timeIntervalSince1970: 1732341000),
        title: Session.creatingTheVimVersionOfVSCodeDevContainerExtension.title,
        session: .creatingTheVimVersionOfVSCodeDevContainerExtension
    )
    static let neovimforFrontendDevelopers: Self = .init(
        id: UUID(),
        startDate: Date(timeIntervalSince1970: 1732341000),
        endDate: Date(timeIntervalSince1970: 1732342200),
        title: Session.neovimforFrontendDevelopers.title,
        session: .neovimforFrontendDevelopers
    )
    static let shortBreak3: Self = .init(
        id: UUID(),
        startDate: Date(timeIntervalSince1970: 1732342200),
        endDate: Date(timeIntervalSince1970: 1732343100),
        title: "Short break",
        session: nil
    )
    static let buildingNeovimPlugins: Self = .init(
        id: UUID(),
        startDate: Date(timeIntervalSince1970: 1732343100),
        endDate: Date(timeIntervalSince1970: 1732344300),
        title: Session.buildingNeovimPlugins.title,
        session: .buildingNeovimPlugins
    )
    static let cannotHelpFallingInVim: Self = .init(
        id: UUID(),
        startDate: Date(timeIntervalSince1970: 1732344300),
        endDate: Date(timeIntervalSince1970: 1732346100),
        title: Session.cannotHelpFallingInVim.title,
        session: .cannotHelpFallingInVim
    )
    static let theLatestDarkDenoPoweredPlugins: Self = .init(
        id: UUID(),
        startDate: Date(timeIntervalSince1970: 1732346100),
        endDate: Date(timeIntervalSince1970: 1732347300),
        title: Session.theLatestDarkDenoPoweredPlugins.title,
        session: .theLatestDarkDenoPoweredPlugins
    )
    static let shortBreak4: Self = .init(
        id: UUID(),
        startDate: Date(timeIntervalSince1970: 1732347300),
        endDate: Date(timeIntervalSince1970: 1732348200),
        title: "Short break",
        session: nil
    )
    static let lightningTalks: Self = .init(
        id: UUID(),
        startDate: Date(timeIntervalSince1970: 1732348200),
        endDate: Date(timeIntervalSince1970: 1732350000),
        title: "Lightning Talks (5min x 6)",
        session: nil
    )
    static let closing: Self = .init(
        id: UUID(),
        startDate: Date(timeIntervalSince1970: 1732350000),
        endDate: Date(timeIntervalSince1970: 1732350600),
        title: Session.closing.title,
        session: .closing
    )
    static let afterParty: Self = .init(
        id: UUID(),
        startDate: Date(timeIntervalSince1970: 1732350600),
        endDate: Date(timeIntervalSince1970: 1732357800),
        title: "After party",
        session: nil
    )
}
