
import SwiftUI

struct Place : Codable, Identifiable {
    var id: String
    var name: String
    var imageUrl: String
    var siteUrl: String
    var lat: Double
    var long: Double
    var description: String
}
