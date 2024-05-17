//
//  APIClient.swift
//  BrastlewarkApp
//
//  Created by Daniela Ciciliano on 17/05/24.
//

import Foundation

struct ApiClient {
    
    func getData (Profession: String, completion: @escaping (Result<[BrastlewarkDataModel],Error>) -> Void ) {
        
        var request = URLRequest(url: URL(string: "https://raw.githubusercontent.com/rrafols/mobile_test/master/data.json\(Profession)")!,timeoutInterval: Double.infinity)
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data else {
                if let error = error {
                    print("Error: \(error)")
                }
                return
            }
            print(String(data: data, encoding: .utf8)!)
            
            do {
                let result = try JSONDecoder().decode([BrastlewarkDataModel].self, from: data)
                completion(.success(result))
            } catch {
                print("Error decoding JSON:\(error)")
                completion(.failure(error))
            }
            
        }.resume()
        
    }
    
    
}
