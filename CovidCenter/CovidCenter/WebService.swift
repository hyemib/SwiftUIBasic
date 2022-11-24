
import Foundation

class WebService {
    func fetchData(url: String) async throws -> [CovidCenter] {
        guard let url = URL(string: url) else { return [] }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        let centers = try JSONDecoder().decode(CovidCenters.self, from: data)
        
        return centers.data
    }
}

