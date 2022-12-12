
import SwiftUI

struct AuthView: View {
    @Binding var showingSheet: Bool
    
    var body: some View {
        Text("Hello, World!")
    }
}

struct AuthView_Previews: PreviewProvider {
    @State static var showingSheet = false
    
    static var previews: some View {
        AuthView(showingSheet: $showingSheet)
    }
}
