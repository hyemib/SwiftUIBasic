import Foundation

// playground에서 URLSession 통신하려면 다음의 코드가 필요하다
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true

// 1. carData.json 파일을 mocki.io에 올린다.
// 2. URLSession으로 데이터를 가져와 바로 출력이 가능한지 살펴본다
// 3. 차 이름들만 출력되도록 만들어본다
// 4. 목록 데이터들을 더 활용해서 차 이름과 설명, 하이브리드 여부를 print로 출력하도록 한다


// MARK: - Welocme
struct Result: Codable {
    let resultCode: Int
    let resultMsg: String
    let numOfRows: Int
    let pageNo: String
    let totalCount: Int
    let resultlist: [Pharmacy]
}

// MARK: - Resultlist
struct Pharmacy: Codable {
    let parmacyNm, telno, rdnmadr, dataCrtrYmd: String

    enum CodingKeys: String, CodingKey {
        case parmacyNm = "parmacy_nm"
        case telno, rdnmadr
        case dataCrtrYmd = "data_crtr_ymd"
    }
}


func loadJson<T: Decodable>(data: Data) -> T {
    do {
        return try JSONDecoder().decode(T.self, from: data)
    } catch {
        fatalError("Unable to parse data: \(error)")
    }
}

let url = URL(string: "http://apis.data.go.kr/3660000/PharmacyService/getPharmacyList?serviceKey=G0wifyrCXXdAEWJ3Hu5tkoHSyvjLW2XjMAX1L1Pe6wV%2BJDxrHBYaXXFnVfJh0C%2BJRDl9gZFCrdBKX2PAHxKWSw%3D%3D&numOfRows=10")!

let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
    // data, response, error을 활용한 데이터 가져온 이후의 작업
    
    // data가 nil로서 옵셔널 바인딩에서 else처리 된다면 끝
    guard let data else {
        print("nothing by error")
        return
    }
    
    var resultData: Result = loadJson(data: data)
    print(resultData.resultlist)
    
    for result in resultData.resultlist {
        print("\(result.parmacyNm)")
        print("\(result.telno)")
        print("\(result.rdnmadr)")
        print("\(result.dataCrtrYmd)")
        print("-----------------")
    }
}

task.resume()
