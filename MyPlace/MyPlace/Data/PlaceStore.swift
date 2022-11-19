
import SwiftUI
import Combine

class PlaceStore : ObservableObject {
    
    @Published var places: [Place]
    
    init (places: [Place] = []) {
        self.places = places
    }
}

