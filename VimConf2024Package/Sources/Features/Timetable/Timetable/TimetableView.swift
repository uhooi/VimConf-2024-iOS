import SwiftUI
import TimetableData

// MARK: - Actions

enum TimetableViewAction {
    case onShowSessionButtonClick
}

enum TimetableViewAsyncAction {
}

// MARK: - View

struct TimetableView: View {
    let timetables: [Timetable]

    var body: some View {
        List(timetables) { timetable in
            TimetableRowView(timetable: timetable)
        }
    }
}
