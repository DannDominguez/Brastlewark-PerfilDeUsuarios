//
//  FriendList.swift
//  BrastlewarkApp
//
//  Created by Daniela Ciciliano on 19/05/24.
//

import SwiftUI

struct FriendList: View {
    
    
    let habitantFriends: Habitant
    
    var body: some View {
        
        List(habitantFriends.friends, id: \.self) { friend in
            HStack {
                Image(systemName: "heart.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .clipShape(Circle())
                    .foregroundStyle(Color.pink)
                    .overlay(Circle().stroke(Color.pink, lineWidth: 2))
                    .shadow(color: Color.pink, radius: 5)
                
                Text(friend)
                    .font(.title3)
                    .padding(.leading, 8)
            }
            .padding(.vertical, 8)
        }
        
        .navigationTitle("Friends")
        
    }
}



#Preview {
    FriendList(habitantFriends: Habitant(id: 1, name: "", thumbnail: "", age: 1, weight: 2.2, height: 3.3, hairColor: "", professions: [""], friends: [""]))
}
