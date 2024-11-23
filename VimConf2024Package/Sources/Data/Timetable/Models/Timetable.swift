package import Foundation
package import SessionData

package struct Timetable: Identifiable, Sendable {
    package let id: UUID
    package let startTime: Date
    package let endTime: Date
    package let title: String
    package let session: Session?

    package var startTimeText: String {
        startTime.formatted(date: .omitted, time: .shortened)
    }
    package var endTimeText: String {
        endTime.formatted(date: .omitted, time: .shortened)
    }
}

// MARK: - Internals

extension Timetable {
    static let reception: Self = .init(
        id: UUID(),
        startTime: Date(timeIntervalSince1970: 1732321800),
        endTime: Date(timeIntervalSince1970: 1732323600),
        title: "Reception",
        session: nil
    )
    static let opening: Self = .init(
        id: UUID(),
        startTime: Date(timeIntervalSince1970: 1732323600),
        endTime: Date(timeIntervalSince1970: 1732324200),
        title: Session.opening.title,
        session: .opening
    )
    static let keynote1: Self = .init(
        id: UUID(),
        startTime: Date(timeIntervalSince1970: 1732324200),
        endTime: Date(timeIntervalSince1970: 1732327800),
        title: Session.keynote1.title,
        session: .keynote1
    )
    static let shortBreak1: Self = .init(
        id: UUID(),
        startTime: Date(timeIntervalSince1970: 1732327800),
        endTime: Date(timeIntervalSince1970: 1732328400),
        title: "Short break",
        session: nil
    )
    static let keynote2: Self = .init(
        id: UUID(),
        startTime: Date(timeIntervalSince1970: 1732328400),
        endTime: Date(timeIntervalSince1970: 1732330800),
        title: Session.keynote2.title,
        session: .keynote2
    )
    static let lunchBreak: Self = .init(
        id: UUID(),
        startTime: Date(timeIntervalSince1970: 1732330800),
        endTime: Date(timeIntervalSince1970: 1732334400),
        title: "Lunch break",
        session: nil
    )
    static let masteringQuickfix: Self = .init(
        id: UUID(),
        startTime: Date(timeIntervalSince1970: 1732334400),
        endTime: Date(timeIntervalSince1970: 1732335300),
        title: Session.masteringQuickfix.title,
        session: .masteringQuickfix
    )
    static let hackingVimScript: Self = .init(
        id: UUID(),
        startTime: Date(timeIntervalSince1970: 1732335300),
        endTime: Date(timeIntervalSince1970: 1732337100),
        title: Session.hackingVimScript.title,
        session: .hackingVimScript
    )
}
