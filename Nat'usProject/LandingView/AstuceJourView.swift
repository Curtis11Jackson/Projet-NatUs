//
//  AstuceJourView.swift
//  NatUs
//
//  Created by Marina FERNANDEZ on 09/03/2021.
//

import SwiftUI

struct AstuceJourView: View {
    let astuceJourTab: AstuceJourModel
    var body: some View {
        ScrollView {
            
            VStack {
                
                ZStack(alignment: .topLeading) {
                    Image("ampouleverte2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .padding(.top, -61.0)
                        .frame(width: /*@START_MENU_TOKEN@*/390.0/*@END_MENU_TOKEN@*/, height: 400.0)
                    Text("L'astuce \ndu Jour")
                        //.font(.system(size: 43.0))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .frame(width: 245.0, height: 103.0)
                        .font(Font.system(size:43, design: .rounded))
                        .padding(.top, 23.0)
                    
                    }
                .edgesIgnoringSafeArea(.top)
            
                Text("Le saviez-vous ?")
                    //.font(.title)
                    .font(Font.system(size:29, design: .rounded))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.greenNatus)
                    .padding(.top, 34.0)
                Text(astuceJourTab.infos)
                    .multilineTextAlignment(.leading)
                    .padding(.all, 19.0)
                    .font(.title3)
            
                Text("Astuce")
                    //.font(.title)
                    .font(Font.system(size:29, design: .rounded))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(.top, 11.0)
                    .foregroundColor(.greenNatus)
                Text(astuceJourTab.tip)
                    .multilineTextAlignment(.leading)
                    .padding(.all, 19.0)
                    .font(.title3)
                //Text(astuceJourTab.name)
                //Text(astuceJourTab.id)
            }
        }
    }

    struct AstuceJourView_Previews: PreviewProvider {
        static var previews: some View {
        AstuceJourView(astuceJourTab: cosmeticAstuceJour)
        }
    }
}
