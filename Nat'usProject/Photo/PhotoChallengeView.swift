//
//  PhotoChallengeView.swift
//  Nat'Us
//
//  Created by Marty Jackson Curtis on 10/03/2021.
//

import SwiftUI

struct PhotoChallengeView: View {
    let challenge: PhotoChallenge
    var body: some View {
        
        VStack {
            
            ZStack{
                
                Image("compostImg")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .padding(.top, -85.0)
                    .frame(width: 380, height: 360, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
                Image(systemName: "camera.fill")
                    .foregroundColor(.white)
                    .padding(.top, 320.0)
                    .font(.title)
                   
                
            }
            
            HStack{
                
            Text(challenge.name)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
            Spacer()
            }
            .padding(.leading, 14.0)
            

            Text(challenge.description)
                .font(.body)
                .padding([.leading, .bottom, .trailing])
            
            Text("Catégorie : " + challenge.category)
                .italic()
                .padding(.bottom, 5)
           
            
            Text("Ton challenge :")
                .bold()
                .foregroundColor(.greenNatus)
                .font(.title)
            
            Text(challenge.goal)
                .padding(.top, 2)
                .padding(.bottom, 10)
            
            Text("Prends une photo pour le valider !")
                .font(.title)
                
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .frame(width: 400, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(Color.greenNatus.shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 5, x: 0.0, y: 3))
            
                
        }
    }
}

struct PhotoChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoChallengeView(challenge: compostChallenge)
            .padding(.horizontal, 30.0)
    }
}
