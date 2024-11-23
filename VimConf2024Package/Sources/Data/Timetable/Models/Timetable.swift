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
    static let opening: Self = .init(
        id: UUID(),
        startTime: Date(timeIntervalSince1970: 1732323600),
        endTime: Date(timeIntervalSince1970: 1732324200),
        title: "Opening",
        session: .opening
    )
}
