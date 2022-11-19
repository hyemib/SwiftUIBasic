
import SwiftUI

struct WebTabView: View {
    @State private var isShowingSheet: Bool = false
    
    var body: some View {
        VStack {
            Button(action: {
                isShowingSheet.toggle()
            }) {
                Text("Open Web Browser")
            }
        }
        .sheet(isPresented: $isShowingSheet, onDismiss: didDismiss) {
                WebSheetView()
        }
        
    }
    
    func didDismiss() {
        // Handle the dismissing action.
    }
}

struct WebSheetView: View {
    var body: some View {
        SafariView(url: URL(string:"https://www.apple.com/kr/")!)
    }
}

struct WebTabView_Previews: PreviewProvider {
    static var previews: some View {
        WebTabView()
    }
}
