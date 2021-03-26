//
//  AstucesCategoriesView.swift
//  NatUs
//
//  Created by Marina FERNANDEZ on 12/03/2021.
//
import SwiftUI

struct AstucesCategoriesView: View {
    var body: some View {
        NavigationView {
      
            ScrollView {
                
            VStack {
                    
                Image("ampouleverte")
                //Image("ampoule-ours")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom, 15.0)
                    .opacity(1.0)
                    //.opacity(0.9)
                    
                Text("Catégories d'astuces")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.bottom, 15.0)
                
                VStack {
             NavigationLink(
                destination: AstuceListByCategory(astuceByCategoryList:astuceMainVerte1 ),
                label: {
                    
                    HStack {
                        Image("mainverte")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 188.0, height: 140.0)
                            .clipped()
                        //Text ("Avoir la \nmain verte")
                        Text ("La main verte ")
                            .font(.title2)
                            .frame(width: 152.0, height: 140.0)
                    }
                    .background(Color
                                    .red
                                    .opacity(0.9))
                    .cornerRadius(20)
                    .shadow(color: .gray, radius: 5.0, x: 5.0, y: 0.0)
                }).foregroundColor(.primary)
                    
                    NavigationLink(
                       destination: AstuceListDIY(astuceByCategoryList:astuceDIY1 ),
                       label: {
                    
                    
                    HStack {
                        Text ("   Fait maison")
                            .font(.title2)
                            .frame(width: 166.0, height: 140.0)
                        //Image("diy")
                        Image("recyclagepots1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 174.0, height: 140.0)
                            .clipped()
                    }
                    .background(Color
                                    .yellow
                                    .opacity(0.8))
                    .cornerRadius(20)
                    .shadow(color: .gray, radius: 5, x: 5.0, y: 0.0)
                      }).foregroundColor(.primary)
                    HStack {
                        //Image("ampoulevegetale")
                        Image("ampouleeconomique")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 190.0, height: 140.0)
                            .clipped()
                        Text ("Economie d'énergie")
                            .font(.title2)
                            .frame(width: 150.0, height: 140.0)
                    }
                    .background(Color
                                    .green
                                    .opacity(0.5))
                    .cornerRadius(20)
                    .shadow(color: .gray, radius: 5, x: 5.0, y: 0.0)

                    HStack {
                        Text ("  Mobilité")
                            .font(.title2)
                            .frame(width: 140.0, height: 140.0)
                        Image("mobilite")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 200.0, height: 140.0)
                            .clipped()
                    }
                    .background(Color
                                    .blue
                                    .opacity(0.4))
                    .cornerRadius(20)
                    .shadow(color: .gray, radius: 5, x: 5.0, y: 0.0)

                    HStack {
                        //Image("stopplastic")
                        Image("dechets2-1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 200.0, height: 140.0)
                            .clipped()
                        Text ("Déchets ")
                            .font(.title2)
                            .frame(width: 140.0, height: 140.0)
                    }
                    .background(Color
                                    .purple
                                    .opacity(0.5))
                    .cornerRadius(20)
                    .shadow(color: .gray, radius: 5, x: 5.0, y: 0.0)

                    HStack {
                        Text (" Consommation")
                            .font(.title2)
                            .frame(width: 170.0, height: 140.0)
                        Image("consommation1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 175.0, height: 140.0)
                            .clipped()
                    }
                    .background(Color
                                    .orange
                                    .opacity(0.6))
                    .cornerRadius(20)
                    .shadow(color: .gray, radius: 5, x: 5.0, y: 0.0)
                    
                }
            }
                .navigationBarTitle(Text("Astuces"))
                .navigationBarItems(trailing: Button(action: {}) {
                    Image(systemName: "person.circle.fill")
                        .accentColor(.primary)
                        .font(.largeTitle)
                })
            }
        }
    }
}

struct AstucesCategoriesView_Previews: PreviewProvider {
    static var previews: some View {
      
        AstucesCategoriesView()
    }
}

