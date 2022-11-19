
import SwiftUI
import Charts

struct ChartMoreView: View {
    let weekdays = Calendar.current.shortWeekdaySymbols
    let steps = [ 10531, 6019, 7200, 8311, 7403, 6503, 9230 ]
                  
    var body: some View {
        Chart {
            ForEach (weekdays.indices, id: \.self) { index in
                BarMark(
                    x: .value("Day", weekdays[index]),
                    y: .value("Steps", steps[index])
                )
                .foregroundStyle(by: .value("Day", weekdays[index]))
                .annotation {
                    Text("\(steps[index])")
                }
                
                LineMark(
                    x: .value ("Day", weekdays[index]),
                    y: .value ("Steps", steps[index])
                )
                .foregroundStyle (Color.indigo)
                .lineStyle (StrokeStyle(lineWidth: 4.0))
            }
        }
        .padding()
        .navigationTitle("Weekly Report")
    }
}

struct ChartMoreView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ChartMoreView()
        }
    }
}
