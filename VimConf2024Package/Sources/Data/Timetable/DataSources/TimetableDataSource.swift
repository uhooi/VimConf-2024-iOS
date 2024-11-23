import Foundation

protocol TimetableDataSource: Sendable {
    func timetables() async throws -> [Timetable]
}

final class DefaultTimetableDataSource {
    static let shared = DefaultTimetableDataSource()

    private init() {}
}

extension DefaultTimetableDataSource: TimetableDataSource {
    func timetables() async throws -> [Timetable] {
        [
            .opening,
        ]
    }
}
