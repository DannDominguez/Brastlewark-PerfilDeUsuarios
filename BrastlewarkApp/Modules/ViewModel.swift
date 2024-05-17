//
//  ViewModel.swift
//  BrastlewarkApp
//
//  Created by Daniela Ciciliano on 17/05/24.
//

import Foundation

class BrastlewarkViewModel: ObservableObject {
    @Published var DataModel: [BrastlewarkDataModel]?
    @Published var error: Error?
    
    private let apiClient = ApiClient()
    
    
    func getDataFDM(Profession: String) {
        apiClient.getData(Profession: Profession) { result in
            DispatchQueue.main.async {
                switch result {
                case.success(let results):
                    self.DataModel = results
                    print("Results \(results)")
                case.failure(let error):
                    print("Error fetching results \(error)")
                }
            }
        }
    }
}
