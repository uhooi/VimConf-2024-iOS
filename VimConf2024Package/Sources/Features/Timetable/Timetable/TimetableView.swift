import SwiftUI
import TimetableData

// MARK: - Actions

enum TimetableViewAction {
}

enum TimetableViewAsyncAction {
}

// MARK: - View

struct TimetableView: View {
    let timetables: [Timetable]

    var body: some View {
        List(timetables) { timetable in
            if let sessionID = timetable.session?.id {
                NavigationLink(value: sessionID) {
                    TimetableRowView(timetable: timetable)
                }
            } else {
                TimetableRowView(timetable: timetable)
            }
        }
    }
}
