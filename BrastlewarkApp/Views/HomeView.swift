//
//  HomeView.swift
//  BrastlewarkApp
//
//  Created by Daniela Ciciliano on 17/05/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        NavigationStack{
            VStack {
                Text("Brastlewark Town")
                    .fontDesign(.rounded)
                    .fontWeight(.bold)
                    .font(.system(size: 50))
                    .foregroundStyle(.white)
                    .padding(.top,-100)
                
                Text("*Find family, friends and workers*")
                    .fontDesign(.rounded)
                    .font(.system(size: 20))
                    .frame(alignment: .center)
                    .padding(50)
                
                
                NavigationLink(destination: SearchView()) {
                    Text("*Comenzar*")
                        .font(.title2)
                        .fontDesign(.default)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.pink)
                        .cornerRadius(6)
                }
                
                
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [.pink, .white]),
                    startPoint: .top,
                    endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            )
        }
    }
}
#Preview {
    HomeView()
}
