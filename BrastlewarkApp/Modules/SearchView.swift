//
//  SearchView.swift
//  BrastlewarkApp
//
//  Created by Daniela Ciciliano on 17/05/24.
//

import SwiftUI

struct SearchView: View {
    @ObservedObject var viewModelSV = BrastlewarkViewModel()
    @State var SearchText = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                    SearchBarView(viewModel: viewModelSV, SearchText: $SearchText)
                .padding(.horizontal)
                
                List {
                    Section(header: Text("Ingresa la Profesión del Gnomo \n para realizar la búsqueda")) {
                        ForEach(viewModelSV.DataModel?.brastlewark ?? [], id: \.id) { habitant in
                            VStack(alignment: .leading) {
                                Text("**Name: \(habitant.name)**")
                                Text("*Profession: \(habitant.professions.first ?? "")*")
                            }
                            
                        }
                    }
                } .listStyle(GroupedListStyle())
                
            }
            .navigationTitle("Habitants Finder")
//            .onAppear {
//                viewModelSV.getDataFDM()
//            }
        }
        
    }
}

#Preview {
    SearchView()
}
