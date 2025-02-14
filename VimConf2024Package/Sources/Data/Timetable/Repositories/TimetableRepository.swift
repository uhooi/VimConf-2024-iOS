package protocol TimetableRepository: Sendable {
    func timetables() async throws -> [Timetable]
}

package final class DefaultTimetableRepository {
    package static let shared = DefaultTimetableRepository()

    private let timetableDataSource: any TimetableDataSource

    private init(
        timetableDataSource: some TimetableDataSource = DefaultTimetableDataSource.shared
    ) {
        self.timetableDataSource = timetableDataSource
    }
}

extension DefaultTimetableRepository: TimetableRepository {
    package func timetables() async throws -> [Timetable] {
        try await timetableDataSource.timetables()
    }
}
