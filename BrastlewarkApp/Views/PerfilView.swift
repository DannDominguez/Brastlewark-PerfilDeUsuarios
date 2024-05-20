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
                    .frame(width: 250, height: 250)
                    .clipShape(Rectangle())
                    .padding(30)
                    
                
            } else {
                ProgressView()
                    .frame(height: 200)
            }
            
            Text("""
                          **HabitantID:** \(habitantView.id)
                          **Name:** \(habitantView.name)
                          **Age:** \(habitantView.age)
                          **Hair Color:** \(habitantView.hairColor)
                          **Weight:** \(String(format: "%.2f", habitantView.weight)) kg
                          **Height:** \(String(format: "%.2f", habitantView.height)) cm
                          **Professions:** \(habitantView.professions.joined(separator: ", "))
                          """)
            .font(.title3)
            .multilineTextAlignment(.leading)
            .padding()
            
            NavigationLink(destination: FriendList(habitantFriends: habitantView)) {
                Text("See Friends")
                    .font(.title3)
                    .fontDesign(.default)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.pink)
                    .cornerRadius(6)
                
            }
        }
        .navigationTitle("Profile")
    }
}
#Preview {
    PerfilView(habitantView: Habitant(id: 1, name: "", thumbnail: "", age: 20, weight: 50.4, height: 3.5, hairColor: "", professions: ["Worker"], friends: [""]))
}
