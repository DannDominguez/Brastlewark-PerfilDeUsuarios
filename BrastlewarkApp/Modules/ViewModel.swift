//
//  ViewModel.swift
//  BrastlewarkApp
//
//  Created by Daniela Ciciliano on 17/05/24.
//

import Foundation
import SwiftUI

class BrastlewarkViewModel: ObservableObject {
    @Published var DataModel: BrastlewarkDataModel?
    @Published var gnomes: [Habitant]?
    @Published var searchText = ""
    @Published var error: Error?
    //var searchText = ""
    
    
    private let apiClient = ApiClient()
    
    
    func getDataFDM() {
        apiClient.getData() { result in
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
    
//    var filterGnomes: [Habitant]? {
//        if searchText.isEmpty {
//            return gnomes
//        } else {
//            return gnomes?.filter { gnome in
//                gnome.professions.contains(searchText.lowercased())
//
//
//            }
//        }
//    }
    
}
