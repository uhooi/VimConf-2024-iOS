import SwiftUI
import TimetableData

struct TimetableRowView: View {
    let timetable: Timetable
    
    var body: some View {
        VStack {
            Text(timetable.title)
                .font(.title2)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("\(timetable.startTime.formatted()) - \(timetable.endTime.formatted())")
                .font(.caption)
                .foregroundStyle(.secondary)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}
