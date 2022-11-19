
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    ChartView()
                } label: {
                    Label("Toy Shape", systemImage: "chart.bar.fill")
                }
                
                NavigationLink {
                    ChartMoreView()
                } label: {
                    Label("Toy Shape", systemImage: "chart.bar.fill")
                }
            }
            .navigationTitle("SwiftUI Charts")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
