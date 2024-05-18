//
//  SearchBarView.swift
//  BrastlewarkApp
//
//  Created by Daniela Ciciliano on 17/05/24.
//

import SwiftUI

struct SearchBarView: View {
    @State var viewModel: BrastlewarkViewModel
    @Binding var SearchText: String
    
    var body: some View {
        HStack {
            TextField("Profesion...", text: $SearchText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal,10)

            Button(action: {
                viewModel.getDataFDM()
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
