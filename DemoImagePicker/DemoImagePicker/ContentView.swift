
import SwiftUI

struct ContentView: View {
    @State var imagePickerVisible: Bool = false
    @State var selectedIamge: Image? = Image(systemName: "photo")
    
    var body: some View {
        ZStack {
            VStack {
                selectedIamge?
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                
                Button(action: {
                    withAnimation {
                        self.imagePickerVisible.toggle()
                    }
                }) {
                    Text("Select an image")
                }
            }.padding()
            
            if (imagePickerVisible) {
                MyImagePicker(imagePickerVisible: $imagePickerVisible, selectedImage: $selectedIamge)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
