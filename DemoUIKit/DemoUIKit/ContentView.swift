
import SwiftUI

struct ContentView: View {
    var body: some View {
        MyScrollView(text: "UIView in SwiftUI")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MyScrollView(text: "Hello World")
    }
}
