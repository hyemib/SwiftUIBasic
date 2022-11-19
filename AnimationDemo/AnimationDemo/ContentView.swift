
import SwiftUI

struct ContentView: View {
    @State private var rotation: Double = 0.0
    @State private var scale: CGFloat = 1.0
    
    var body: some View {
        VStack {
            Button(action: {
                rotation = rotation < 360 ? rotation + 60 : 0
                
                scale = scale < 2.8 ? scale + 0.3 : 1
            }) {
                Text("Click to animate")
                    .rotationEffect(.degrees(rotation))
                    .scaleEffect(scale)
                    .animation(.spring(response: 1, dampingFraction: 0.2, blendDuration: 0), value: scale)
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
