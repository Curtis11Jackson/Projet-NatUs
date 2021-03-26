//
//  ProfilView.swift
//  Nat'Us
//
//  Created by Marty Jackson Curtis on 09/03/2021.
//

import SwiftUI

struct ProfilView: View {
    let profil: ProfilModel
    var body: some View {
        
        VStack{
            
            Text("Mon profil")
                .font(.subheadline)
            
            
            Image(profil.photo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120)
                .overlay(Capsule().stroke(Color.black ,lineWidth:1))
            
            HStack{
                Text(profil.name)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text(profil.firstName)
            }
            
            Text(profil.pseudo)
                .font(.subheadline)

            
            HStack {
                VStack{
                    Text(profil.challengesDone.description)
                    Text("Challenges")
                        .font(.footnote)
                }
                
                Spacer()
                
                VStack{
                    Text(profil.trophees.description)
                    Text("Trophées")
                        .font(.footnote)
                }
                
                Spacer()
                
                VStack{
                    Text(profil.followers.description)
                    Text("followers")
                        .font(.footnote)
                }
                
                Spacer()
                
                VStack{
                    Text(profil.following.description)
                    Text("following")
                        .font(.footnote)
                }
            }
            .padding([.top, .leading, .trailing])
            
            Divider()
            
            VStack{
                
                SectionView(label: "Nom et coordonnées")
                
                SectionView(label: "Mot de passe et sécurité")
                
                SectionView(label: "Réglages")
                
                SectionView(label: "Activité")
                
                SectionView(label: "FAQ")
                
                SectionView(label: "Contact")
                
                SectionView(label: "Déconnexion")
            
            }
            Spacer()
        }
        
    }
}

struct ProfilView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilView(profil: curtisProfil)
    }
}

struct SectionView: View {
    let label: String
    var body: some View {

        
        HStack{
            
            Text(label)
                .padding(.leading,15)
            Spacer()
            Image(systemName: "chevron.right")
                .padding()
        }
        
    }
}


