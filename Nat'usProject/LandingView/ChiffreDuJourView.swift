//
//  ChiffreDuJourView.swift
//  Nat'usProject
//
//  Created by CHRISTOPHE LEHOUSSINE on 2021-03-16.
//

import SwiftUI

struct ChiffreDuJourView: View {
    let chiffreJourTab: ChiffreJourModel
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                VStack(spacing: -15.0) {
                    ZStack(alignment: .topLeading) {
                        Image("ocean")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.top, -112.0)
                            .frame(width: 402.0, height: 400.0)
                        
                        Text("Le chiffre \ndu jour")
                            .foregroundColor(.white).fontWeight(.bold).font(Font.system(size:40, design: .rounded))
                            .multilineTextAlignment(.trailing)
                            .padding([.leading, .bottom], 178.0)
                            .shadow(color: .black, radius: 5)
                    }
                    .padding(.vertical, -87.0)
                    .edgesIgnoringSafeArea(.top)
                    
                    
                    Text("Le saviez-vous ?")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.greenNatus)
                        .padding(.top, 77.0)
                }
                    Text("1 à 8 millions")
                        .foregroundColor(.primary)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.leading)
                        .lineLimit(12)
                        .font(.title)
                        .padding(15.0)
                    
                    
                    Text(chiffreJourTab.tip)
                        .multilineTextAlignment(.leading)
                        .lineLimit(10)
                        .padding(.horizontal, 24.0)
                        .font(.title3)
                    //Text(astuceJourTab.name)
                    //Text(astuceJourTab.id)
                    
                    

                }
            .padding(.vertical, -2.0)
            .padding(.horizontal)
        }
        
        }
    }
struct ChiffreDuJourView_Previews: PreviewProvider {
    static var previews: some View {
        ChiffreDuJourView (chiffreJourTab: elec1ChiffreJour)
    }
}
        
