
import SwiftUI
import Charts

struct ChartView: View {
    var body: some View {
        Chart {
            ForEach(stackedBarData) { shape in
                BarMark(
                    x: .value("Shape Type", shape.type),
                    y: .value("Total Count", shape.count)
                )
                .foregroundStyle(by: .value("Shape Color", shape.color))
            }
        }
        .chartForegroundStyleScale([
            "Green": .green, "Purple": .purple, "Pink": .pink, "Yellow": .yellow
        ])
        .padding()
        .navigationTitle("Toy Shape")
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ChartView()
        }
    }
}
