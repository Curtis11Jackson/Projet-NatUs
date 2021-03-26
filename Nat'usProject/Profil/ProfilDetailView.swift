//
//  ProfilDetailView.swift
//  Nat'usProject
//
//  Created by Marty Jackson Curtis on 18/03/2021.
//

import SwiftUI

struct ProfilDetailView: View {
    let profil: ProfilModel
    var body: some View {
        
        VStack{
            Image(profil.photo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120)
                .overlay(Capsule().stroke(Color.black ,lineWidth:1))
            
            
            Text("\(profil.name) \(profil.firstName)")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            
            Text(profil.pseudo)
                .font(.subheadline)
            
            
            Text("Mes coordonnées")
                .font(.headline)
                .padding(.top)
            
            Divider()
            
            VStack {
                Text("VOTRE NOM ET PRENOM")
                    .font(.subheadline)
                    .fontWeight(.light)
                    .multilineTextAlignment(.leading)
                
                HStack {
                    Text(profil.name)
                    Text(profil.firstName)
                    Image(systemName: "highlighter").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }.padding(.bottom)
                Text("VOTRE EMAIL")
                    .font(.subheadline)
                    .fontWeight(.light)
                    .multilineTextAlignment(.leading)
                
                HStack {
                    Text(profil.email)
                    Image(systemName: "highlighter").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }.padding(.bottom)
                
                
                    Text("VOTRE MOT DE PASSE")
                        .font(.subheadline)
                        .fontWeight(.light)
                        .multilineTextAlignment(.leading)
                
                HStack {
                    Text("*********")
                    Image(systemName: "highlighter").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }.padding(.bottom)
                
                Text("VOTRE PSEUDO")
                    .font(.subheadline)
                    .fontWeight(.light)
                    .multilineTextAlignment(.leading)
                
                HStack {
                    Text(profil.pseudo)
                    Image(systemName: "highlighter").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    
                }.padding(.bottom)
                
                Divider()
                
            }
            
            Spacer()
        }
    }
    
}

struct ProfilDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilDetailView(profil: curtisProfil)
    }
}
