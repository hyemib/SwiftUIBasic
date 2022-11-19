
import SwiftUI

struct ContentView: View {
    @State private var foregroundColor: Color = .white
    @State private var backgroundColor: Color = .purple
    
    var body: some View {
        VStack {
            Text("Hello, world!")
                .font(.largeTitle)
                .padding()
                .foregroundColor(foregroundColor)
                .background(backgroundColor)
                .contextMenu {
                    Button(action: {
                        self.foregroundColor = .black
                        self.backgroundColor = .white
                    }) {
                        Text("Normal Colors")
                        Image(systemName: "paintbrush")
                    }
                    
                    Button(action: {
                        self.foregroundColor = .white
                        self.backgroundColor = .purple
                    }) {
                        Text("Purple Colors")
                        Image(systemName: "paintbrush.fill")
                    }
                }
        }
        .padding()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
