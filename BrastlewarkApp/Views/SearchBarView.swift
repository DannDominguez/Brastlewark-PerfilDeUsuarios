//
//  SearchBarView.swift
//  BrastlewarkApp
//
//  Created by Daniela Ciciliano on 17/05/24.
//

import SwiftUI

struct SearchBarView: View {
    @State var viewModel: BrastlewarkViewModel
   
    
    var body: some View {
        HStack {
            TextField("Profesion...", text: $viewModel.searchText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal,10)

            Button(action: {
                viewModel.filterHabProfession()
            }) {
                Image(systemName: "magnifyingglass")
                    .padding(10)
                    .background(Color.pink)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }
}

//#Preview {
//    SearchBarView(viewModel: BrastlewarkViewModel(), SearchText: "")
//}
