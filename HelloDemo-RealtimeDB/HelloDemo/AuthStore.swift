
import Foundation
import FirebaseAuth

class AuthStore: ObservableObject {
    @Published var userID: String? = Auth.auth().currentUser?.uid
    
    func isLogin() -> Bool {
        if let _ = userID {
            return true
        }
        
        return false
    }
}
