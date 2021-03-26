//
//  AstuceListByCategory.swift
//  Nat'usProject
//
//  Created by Marty Jackson Curtis on 17/03/2021.
//

import SwiftUI

struct AstuceListDIY: View {
    let astuceByCategoryList : AstuceByCategoryModel
    var body: some View {

            ScrollView {
                
                ZStack {
                    
                    Image("idea")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame( height: 160, alignment: .center)
                        .padding([.top])
                        .clipShape(Rectangle())
                        .shadow(radius: 5)
                    
                    
                    HStack {
                        Spacer()
                        Text("Des idées \npour tous !").fontWeight(.bold).foregroundColor(.white).font(.system(size: 28.0))
                            .multilineTextAlignment(.trailing)
                            .padding(.trailing)
                        
                    }
                }
                
                Spacer()
                
                VStack {
                    
                  NavigationLink (
                    destination: AstuceDetailTypeView(),
                    label: {
                   
                    ChallengeLine(astuce: astuceDIY1)
                    }).foregroundColor(.primary)
                    Divider()
                    
                    ChallengeLine(astuce: astuceDIY2)
                    
                    Divider()
                    
                    ChallengeLine(astuce: astuceDIY3)
                    
                }
                
                VStack {
                    
                    
                    Divider()
                    
                    ChallengeLine(astuce: astuceDIY4)
                    
                    Divider()
                    
                    ChallengeLine(astuce: astuceDIY5)
                    
                    Divider()
                    
                    ChallengeLine(astuce: astuceDIY6)
                    
                    
                }
                
            }   .navigationBarTitle(Text(astuceByCategoryList.category))
            .navigationBarItems(trailing: Button(action: {}) {
                NavigationLink(
                    
                    destination: ProfilView(profil: curtisProfil),
                    label: {
                        
                        Image(systemName: "person.circle.fill").accentColor(.primary)
                            .font(.largeTitle)
                        
                    })
            })
            
        
    }
    
    
    struct AstuceListDIY_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView {
            AstuceListDIY(astuceByCategoryList: astuceDIY1)
        }
        }
    }
    struct ChallengeLine: View {
        
        let astuce: AstuceByCategoryModel
        
        var body: some View {
            HStack(alignment: .center) {
                
                Image(astuce.img)
                    .resizable()
                    .aspectRatio(contentMode: .fit)

                    
                    .frame(width: 70.0, height: 70.0)
                    .overlay(Capsule().stroke(Color.greenNatus,lineWidth:2))
                    
                    .padding(.horizontal)
                
                Text(astuce.name).fontWeight(.bold).font(.system(size: 16.0)).multilineTextAlignment(.leading).lineLimit(3)
                Spacer()
                
                
                ZStack {
                    
                    Capsule()
                        .fill(Color.white)
                        .frame(width: 120, height: 35)
                        .overlay(Capsule().stroke(Color.greenNatus ,lineWidth:2))
                    
                    Text("Voir l'astuce")
                        .fontWeight(.bold).foregroundColor(.greenNatus).font(.system(size: 15.0))
                }.padding(25)
                
            }
            
        }
    }
}


