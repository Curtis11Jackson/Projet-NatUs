//
//  ContentView.swift
//  Nat'usProject
//
//  Created by CHRISTOPHE LEHOUSSINE on 2021-03-15.
//

import SwiftUI


struct ContentView: View {
    
    let date = Date()
    var body: some View {

        TabView {
            
            AujourdhuiView()
    
                .tabItem {
                    Image(systemName:
                            "house.fill")
                    Text("Aujourd'hui")
                }
            AstucesCategoriesView()
                .tabItem {
                    Image(systemName:
                            "leaf.arrow.triangle.circlepath")
                    Text("Astuces")
                }
            
            
            CategoryChallengeView(listCategoryChallenge: CategoryChallengeTable)
                .tabItem {
                    Image(systemName:
                            "questionmark.circle")
                    Text("Challenges")
                }
            
            Progression(value: 200, cornerRadius: 6)
                .tabItem {
                    Image(systemName:
                            "chart.bar.xaxis")
                    Text("Progression")
                }
        }.accentColor(.greenNatus)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
            .previewDevice("iPhone 12")
    }
}
