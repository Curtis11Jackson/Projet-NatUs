//
//  ChallengeDetailNewView.swift
//  Nat'usProject
//
//  Created by Marty Jackson Curtis on 19/03/2021.
//

import SwiftUI

struct ChallengeDetailNewView: View {
    let challenge: ChallengesModel
    var body: some View {
        
        ScrollView {
            
            VStack {
                Top(challenge: self.challenge)
                photoView().padding(.top, 20)
                Bottom(challenge: self.challenge)
                
            }.padding(.horizontal)
            
        }
        .background((Color.natusGreenLight
                        .opacity(0.75))
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/))
        
        .navigationBarTitle(Text("Pret pour le défi?"))
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

struct ChallengeDetailNewView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ChallengeDetailNewView(challenge: challengeInsectes)
        }
    }
}

struct photoView: View {
    var body: some View {
        HStack {
            Image("insecthotel2")
                .resizable()
                .frame(height: 100)
            Image("insecthotel5")
                .resizable()
                .resizable()
                .frame(height: 100)
            Image("insecthotel4")
                .resizable()
                .frame(height: 100)
        }
    }
}



struct Top: View {
    let challenge: ChallengesModel
    var body: some View {
        VStack(alignment: .leading) {
            
            //  Text("Prêt pour un défi ?")
            //  .font(.title)
            //    .fontWeight(.heavy)
            //     .padding(.bottom)
            //       .foregroundColor(.primary)
            
            Text(challenge.category)
                .font(.title2)
                .fontWeight(.heavy)
                .padding(.bottom,2)
                .foregroundColor(.GreenText)
            Text(challenge.name)
                .font(.title)
                .bold()
                .padding(.bottom)
                .foregroundColor(.white)
            Text(challenge.description)
                .font(.headline)
                .fontWeight(.bold)
                .multilineTextAlignment(.leading)
                .foregroundColor(.GreenText)
        }
    }
}

struct Bottom: View {
    let challenge: ChallengesModel
    
    @State var showCaptureImageView: Bool = false
    @State var image: Image? = nil
    
    var body: some View {
        VStack (alignment: .leading) {
            Text("Quelques créations de nos utilisateurs").font(.caption).padding(.bottom)
                .foregroundColor(.GreenText)
            
            HStack{
                Text("Ton challenge")
                    .bold()
                    .foregroundColor(.white)
                    .font(.title)
                    .padding(.bottom, 10)
                    .frame(height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Image (systemName: "star")
                    .foregroundColor(.white)
                    .font(.title)
                    .padding(.bottom, 10)
            }
            Text(challenge.goal)
                .font(.headline)
                .fontWeight(.bold)
                .multilineTextAlignment(.leading)
                .foregroundColor(.GreenText)
                .padding(.bottom, 10)
            
        }
        ZStack {
            VStack {
                Button(action: {
                    self.showCaptureImageView.toggle()
                }) {
                    
                    VStack{
                        Text("Valide ton challenge")
                            
                            .font(Font.system(size:30, design: .rounded))
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                        
                        Image (systemName: "camera.circle")
                            .foregroundColor(.white)
                            .font(Font.system(size:60))
                        //image?.resizable()
                    }
                    .padding()
                    .background(Color.natusGreenLight)
                    .cornerRadius(18)
                    .shadow(color: .GreenText, radius: 3, x: 3, y: 3)
                    
                } .padding()
//                if (showCaptureImageView) {
//                    CaptureImageView(isShown: $showCaptureImageView, image: $image)
//                }
                
                image?.resizable()
                    .frame(width: 250, height: 240)
                    .clipShape(Rectangle())
                    .overlay(Rectangle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 7)
            }
            if (showCaptureImageView) {
                CaptureImageView(isShown: $showCaptureImageView, image: $image)
            }
        }
        
        
        NavigationLink(
            destination: AstuceDetailTypeView(),
            label: {
                
                Text("Manque d'inspiration ? Consulte l'astuce")
                    .font(.headline)
                    .underline()
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.white)
                    .padding(.bottom)
            })
    }
}
extension Color {
    static let natusGreenLight = Color("natusGreenLight")
    static let GreenText = Color("GreenText")
}
