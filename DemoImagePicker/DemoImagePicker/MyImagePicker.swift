
import SwiftUI

struct MyImagePicker: UIViewControllerRepresentable {
    @Binding var imagePickerVisible: Bool
    @Binding var selectedImage: Image?
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<MyImagePicker>) -> some UIViewController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: UIViewControllerRepresentableContext<MyImagePicker>) {
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(imagePickerVisible: $imagePickerVisible, selectedImage: $selectedImage)
    }
}
