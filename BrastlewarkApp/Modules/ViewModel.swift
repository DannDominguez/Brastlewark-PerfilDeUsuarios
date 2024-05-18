//
//  ViewModel.swift
//  BrastlewarkApp
//
//  Created by Daniela Ciciliano on 17/05/24.
//

import Foundation

import SwiftUI

class BrastlewarkViewModel: ObservableObject {
    //@Published var DataModel: BrastlewarkDataModel?
    @Published var gnomes: [Habitant]?
    @Published var filterHabitants: [Habitant]?
    @Published var searchText = ""
    @Published var error: Error?
    
    
    
    private let apiClient = ApiClient()
    
    
    func getDataFDM() {
        apiClient.getData() { result in
            DispatchQueue.main.async {
                switch result {
                case.success(let results):
                    self.gnomes = results.brastlewark
                    self.filterHabitants = results.brastlewark
                    print("Results \(results)")
                case.failure(let error):
                    print("Error fetching results \(error)")
                }
            }
        }
    }
    
    func filterHabProfession() {
        if searchText.isEmpty {
            filterHabitants = gnomes
        } else {
            filterHabitants = gnomes?.filter { habitant in
               habitant.professions.contains { $0.lowercased().contains(searchText.lowercased())}

            }
        }
    }
    
}
