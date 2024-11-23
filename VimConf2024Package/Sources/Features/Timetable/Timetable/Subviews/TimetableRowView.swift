import SwiftUI
import TimetableData

struct TimetableRowView: View {
    let timetable: Timetable
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(timetable.startTimeText) - \(timetable.endTimeText)")
                .font(.caption)
                .foregroundStyle(.secondary)
                .frame(maxWidth: .infinity, alignment: .leading)

            Text(timetable.title)
                .font(.title2)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            if let session = timetable.session {
                Text(session.speaker.name)
                    .font(.body)
                    .frame(maxWidth: .infinity, alignment: .leading)

                Text(session.language.text)
                    .font(.caption.bold())
                    .foregroundStyle(.white)
                    .padding(.vertical, 4)
                    .padding(.horizontal, 6)
                    .background(.blue)
                    .clipShape(.rect(cornerRadius: 4))
            }
        }
    }
}
