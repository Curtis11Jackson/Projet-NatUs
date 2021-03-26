//
//  AstuceListByCategory.swift
//  Nat'usProject
//
//  Created by Marty Jackson Curtis on 17/03/2021.
//

import SwiftUI

struct AstuceListByCategory: View {
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
            
            
            
            ChallengeLine(astuce: astuceMainVerte1)
            
            Divider()
            
            ChallengeLine(astuce: astuceMainVerte2)
            
            Divider()
            
            ChallengeLine(astuce: astuceMainVerte3)
            
        
        
        VStack {
            
            
            Divider()
            
            ChallengeLine(astuce: astuceMainVerte4)
            
            Divider()
            
            ChallengeLine(astuce: astuceMainVerte5)

            
        }
    }
    .navigationBarTitle(Text(astuceByCategoryList.category))
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



struct AstuceListByCategory_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AstuceListByCategory(astuceByCategoryList: astuceMainVerte1)
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



