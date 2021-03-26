//
//  challengelist.swift
//  Profil
//
//  Created by CHRISTOPHE LEHOUSSINE on 2021-03-08.
//

import SwiftUI

struct challengelist: View {
    let categoryChallengeList : CategoryChallenge
    var body: some View {
        
        ScrollView {
            
            ZStack {
                
                Image("sparrow")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame( height: 160, alignment: .center)
                    .padding([.top])
                    .clipShape(Rectangle())
                // .shadow(color: .primary, radius: 9)
                
                
                
                HStack {
                    Spacer()
                    Text("Chaque \nAction \nCompte").fontWeight(.bold).foregroundColor(.white).font(.system(size: 28.0))
                        .multilineTextAlignment(.trailing)
                        .padding(.trailing)
                    
                }
            }
            Spacer()
            
            VStack {
                HStack {
                    // Text("Challenges").foregroundColor(.gray).fontWeight(.bold).padding(.leading).font(.title)
                    // Spacer()
                }
                .padding(.top)
                HStack {
                    Text(" Lance toi !")
                        .foregroundColor(.greenNatus).fontWeight(.heavy).lineLimit(2).padding(.leading).font(.title)
                        .frame(height: 70)
                    Spacer()
                }
                
                
                
                ChallengeLine(challenge: challengeCompost)
                
                Divider()
                
                NavigationLink(
                    destination: ChallengeDetailNewView(challenge: challengeInsectes) ,
                    label: {
                        
                        
                        
                        ChallengeLine(challenge: challengeInsectes)
                    }).foregroundColor(.primary)
                Divider()
                
                ChallengeLine(challenge: challengeBio)
                
                Divider()
                
                ChallengeLine(challenge: challengeFlore)
            }//.background(Color.white)
            //.cornerRadius(36)
            //.shadow(radius: 5)
            
            
        }   .navigationBarTitle(Text(categoryChallengeList.categoryName))
        .navigationBarItems(trailing: Button(action: {}) {
            NavigationLink(
                
                destination: ProfilView(profil: curtisProfil),
                label: {
                    
                    Image(systemName: "person.circle.fill").accentColor(.primary)
                        .font(.largeTitle)
                    
                })
        })
        
        
    }
    
    struct challengelist_Previews: PreviewProvider {
        static var previews: some View {
            Group {
                NavigationView {
                    
                    challengelist(categoryChallengeList: greenhandsChallenge)
                }
           
              
            }
        }
    }
    
    struct ChallengeLine: View {
        
        let challenge: ChallengesModel
        
        var body: some View {
            HStack(alignment: .center) {
                
                Image(challenge.img)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    
                    .frame(width: 70.0, height: 70.0)
                    .overlay(Capsule().stroke(Color.greenNatus,lineWidth:2))
                    
                    .padding(.horizontal)
                
                Text(challenge.name).fontWeight(.bold).font(.system(size: 18.0)).multilineTextAlignment(.leading).lineLimit(2)
                Spacer()
                
                
                ZStack {
                    
                    Capsule()
                        .fill(Color.white)
                        .frame(width: 80, height: 35)
                        .overlay(Capsule().stroke(Color.greenNatus ,lineWidth:1))
                    
                    Text("GO !")
                        .fontWeight(.heavy).foregroundColor(.greenNatus).font(.title2)
                    
                    
                }.padding(10)
                
            }.padding(10)
            
        }
    }
}
extension Color {
    static let greenNatus = Color("greenNatus2")
}


