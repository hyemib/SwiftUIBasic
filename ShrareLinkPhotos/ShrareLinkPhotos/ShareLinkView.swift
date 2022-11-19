
import SwiftUI

struct SharingPhoto: Transferable {
    static var transferRepresentation: some TransferRepresentation {
        ProxyRepresentation(exporting: \.image)
    }

    public var image: Image
    public var caption: String
}


struct ShareLinkView: View {
    private let url = URL(string: "https://likelion.net")!
    
    private let photo = SharingPhoto(image: Image(systemName: "flame"), caption: "This is a flame!")
    
    var body: some View {
        VStack {
            ShareLink(item: url)
            
            Divider()
            
            ShareLink(item: url) {
                Label("Share", systemImage: "link.icloud")
                    .font(.largeTitle)
            }
            
            Divider()
            
            photo.image
                .font(.largeTitle)
            
            ShareLink(item: photo,
                      subject: Text("Flame Photo"),
                      message: Text("Check it out!"),
                      preview: SharePreview(photo.caption, image: photo.image))
            .font(.largeTitle)
            
            Divider()
            
            
        }
    }
}

struct ShareLinkView_Previews: PreviewProvider {
    static var previews: some View {
        ShareLinkView()
    }
}
