import SwiftUI
import SessionData
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
            NavigationLink(value: timetable) {
                TimetableRowView(timetable: timetable)
            }
        }
    }
}
