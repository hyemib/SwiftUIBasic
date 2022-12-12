
import Foundation
import FirebaseDatabase

class PostitStore: ObservableObject {
    @Published var postits: [Postit] = []

    private lazy var databaseReference: DatabaseReference? = {
            let ref = Database.database().reference().child("postits")
            return ref
        }()
    
    private let encoder = JSONEncoder()
    private let decoder = JSONDecoder()
    
    func startFetching() {
        guard let databaseReference else {
            return
        }
        
        databaseReference
            .observe(.childAdded) { [weak self] snapshot in
                guard
                    let self = self,
                    var json = snapshot.value as? [String: Any]
                else {
                    return
                }
                
                json["id"] = snapshot.key
                
                do {
                    let postitData = try JSONSerialization.data(withJSONObject: json)
                    let postit = try self.decoder.decode(Postit.self, from: postitData)
                    print(postit)
                    
                    self.postits.insert(postit, at: 0)
                } catch {
                    print("an error occurred", error)
                }
        }
        
        databaseReference
            .observe(.childChanged) { [weak self] snapshot in
                guard
                    let self = self,
                    var json = snapshot.value as? [String: Any]
                else {
                    return
                }
                
                json["id"] = snapshot.key
                
                do {
                    let postitData = try JSONSerialization.data(withJSONObject: json)
                    let postit = try self.decoder.decode(Postit.self, from: postitData)
                    print(postit)
                    
                    var index = 0
                    for postitItem in self.postits {
                        if (postit.id == postitItem.id) {
                            print(postitItem.id)
                            self.postits.remove(at: index)
                        }
                        index += 1
                    }
                    
                    self.postits.insert(postit, at: 0)
                } catch {
                    print("an error occurred", error)
                }
        }
        
        databaseReference
            .observe(.childRemoved) {  [weak self] snapshot in
                guard
                    let self = self,
                    var json = snapshot.value as? [String: Any]
                else {
                    return
                }
                
                json["id"] = snapshot.key
                
                do {
                    let postitData = try JSONSerialization.data(withJSONObject: json)
                    let postit = try self.decoder.decode(Postit.self, from: postitData)
                    print(postit)
                    
                    var index = 0
                    for postitItem in self.postits {
                        if (postit.id == postitItem.id) {
                            print(postitItem.id)
                            self.postits.remove(at: index)
                        }
                        index += 1
                    }
                } catch {
                    print("an error occurred", error)
                }
            }
    }
    
    func addPostit(postit: Postit) {
        databaseReference?.childByAutoId().setValue([
            "id": postit.id,
            "user": postit.user,
            "memo": postit.memo,
            "colorIndex": postit.colorIndex,
            "createdAt": postit.createdAt
        ])
    }
    
    func deletePostit(postit: Postit) {
        print("delete id: \(postit.id)")
        databaseReference?.child(postit.id).removeValue()
    }
    
    func stopFetching() {
        databaseReference?.removeAllObservers()
    }
}
