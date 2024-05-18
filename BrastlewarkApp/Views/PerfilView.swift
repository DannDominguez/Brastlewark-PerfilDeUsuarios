//
//  PerfilView.swift
//  BrastlewarkApp
//
//  Created by Daniela Ciciliano on 17/05/24.
//

import SwiftUI
import Kingfisher

struct PerfilView: View {
    let habitantView: Habitant
    
    var body: some View {
        VStack {
            
            if let imageURL = URL(string: habitantView.thumbnail.replacingOccurrences(of: "http://", with: "https://")) {
                KFImage(imageURL)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
//                    .scaledToFit()
                    .frame(width: 250, height: 250)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.blue, lineWidth: 3))
                    .shadow(color: Color.cyan,radius: 15)
                    .padding(.top)
                
            } else {
                ProgressView()
                    .frame(height: 200)
            }
            
            
        }
    }
}

//#Preview {
//    PerfilView(habitantView: Habitant(id: 1, name: "", thumbnail: "", age: 20, weight: 50.4, height: <#T##Double#>, hairColor: <#T##String#>, professions: <#T##[String]#>, friends: <#T##[String]#>))
//}
