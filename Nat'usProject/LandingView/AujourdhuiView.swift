//
//  HomeView.swift
//  Profil
//
//  Created by CHRISTOPHE LEHOUSSINE on 2021-03-10.
//

import SwiftUI

struct AujourdhuiView: View {
    @State private var showingAstuceModal = false
    @State private var showingChiffreModal = false
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                
                VStack(alignment: .center) {
               
                    Button(action: {showingChiffreModal.toggle()}, label: {
                        
                        ZStack(alignment: .topTrailing)  {
                            
                            Image("ocean")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(30)
                                .padding()
                                .shadow(color: .primary, radius: 5)
                            
                            Text("Le chiffre \ndu jour").foregroundColor(.white).fontWeight(.bold).font(Font.system(size:40, design: .rounded))
                                .multilineTextAlignment(.trailing)
                                .padding([.top, .trailing], 36.0)
                                .shadow(color: .black, radius: 5)
                        }
                    })
                    .sheet(isPresented: $showingChiffreModal) {
                        ChiffreDuJourView(chiffreJourTab: elec1ChiffreJour)
                    }
                   
                    Button(action: {showingAstuceModal.toggle()}, label: {
                    
                    ZStack(alignment: .topLeading)  {
                        
                        Image("ampouleverte2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(30)
                            .padding([.leading,
                                      .bottom,
                                      .trailing],
                                     18)
                            .shadow(color: .gray, radius: 5, x: 3, y: 3)

                            Text("L'astuce \ndu jour")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .font(Font.system(size:40, design: .rounded))
                                .padding(.top, 28.0)
                                .padding(.leading, 35.0)
                                .shadow(color: .black, radius: 5)
                        }
                    })
                    .sheet(isPresented: $showingAstuceModal) {
                            AstuceJourView(astuceJourTab: cosmeticAstuceJour)
                    }
            }
            .navigationBarTitle(Text(Date(), style: .date))
            .navigationBarItems(trailing: Button(action: {}) {
                NavigationLink(
                    
                    destination: ProfilView(profil: curtisProfil),
                    label: {
                        
                        Image(systemName: "person.circle.fill").accentColor(.primary)
                            .font(.largeTitle)
                        
                    })
                })
            }
        }
    }
}
