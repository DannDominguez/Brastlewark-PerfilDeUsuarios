//
//  SearchView.swift
//  BrastlewarkApp
//
//  Created by Daniela Ciciliano on 17/05/24.
//

import SwiftUI

struct SearchView: View {
    @ObservedObject var viewModelSV = BrastlewarkViewModel()
    //@State var SearchText = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                SearchBarView(viewModel: viewModelSV)
                .padding(.horizontal)
                
                List {
                    Section(header: Text("Ingresa la Profesión del Gnomo \n para realizar la búsqueda")) {
                        ForEach(viewModelSV.filterHabitants ?? [], id: \.id) { habitant in
                            VStack(alignment: .leading) {
                                Text("**Name: \(habitant.name)**")
                                Text("*Profession: \(habitant.professions.joined(separator: ","))*") {
                                    NavigationLink( destination: PerfilView()) {
                                    }
                                    
                                }
                            }
                            
                        }
                    }
                } .listStyle(GroupedListStyle())
                
            }
            .navigationTitle("Habitants Finder")
            .onAppear {
                viewModelSV.getDataFDM()
            }
        }
        
    }
}


#Preview {
    SearchView()
}
