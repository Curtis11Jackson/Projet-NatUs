//
//  Progression.swift
//  Natus PK
//
//  Created by KASEMRATH on 12/03/2021.
//

import SwiftUI
struct Progression: View {
    
    var value: CGFloat
    var cornerRadius: CGFloat
    
    
    var body: some View {
        
        NavigationView{
            VStack {
                
                HStack (alignment: .bottom, spacing: 14.0) {
                    
                    ZStack {
                        Capsule()
                            .fill(Color.pictosMainVerte)
                            .frame(width: 45.0, height: 24.0)
                            .overlay(Capsule().stroke(Color.white ,lineWidth:1))
                        Text("16")
                            .fontWeight(.bold).foregroundColor(.white).font(.system(size: 10.0))
                    }
                    ZStack {
                        Capsule()
                            .fill(Color.pictosMainVerte)
                            .frame(width: 45.0, height: 24.0)
                            .overlay(Capsule().stroke(Color.white ,lineWidth:1))
                        Text("17")
                            .fontWeight(.bold).foregroundColor(.white).font(.system(size: 10.0))
                    }
                    ZStack {
                        Capsule()
                            .fill(Color.pictosMainVerte)
                            .frame(width: 45.0, height: 24.0)
                            .overlay(Capsule().stroke(Color.white ,lineWidth:1))
                        Text("19")
                            .fontWeight(.bold).foregroundColor(.white).font(.system(size: 10.0))
                    }
                    ZStack {
                        Capsule()
                            .fill(Color.pictosMainVerte)
                            .frame(width: 45.0, height: 24.0)
                            .overlay(Capsule().stroke(Color.white ,lineWidth:1))
                        Text("17")
                            .fontWeight(.bold).foregroundColor(.white).font(.system(size: 10.0))
                    }
                    ZStack {
                        Capsule()
                            .fill(Color.pictosMainVerte)
                            .frame(width: 45.0, height: 24.0)
                            .overlay(Capsule().stroke(Color.white ,lineWidth:1))
                        Text("18")
                            .fontWeight(.bold).foregroundColor(.white).font(.system(size: 10.0))
                    }
                    ZStack {
                        Capsule()
                            .fill(Color.pictosMainVerte)
                            .frame(width: 45.0, height: 24.0)
                            .overlay(Capsule().stroke(Color.white ,lineWidth:1))
                        Text("20")
                            .fontWeight(.bold).foregroundColor(.white).font(.system(size: 10.0))
                    }
                }
                
                HStack (alignment: .bottom, spacing: 29.0) {
                    
                    RoundedRectangle(cornerRadius: cornerRadius).fill(LinearGradient(gradient: Gradient(colors: [.pictosDechets,]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 30, height: 140)
                    
                    RoundedRectangle(cornerRadius: cornerRadius).fill(LinearGradient(gradient: Gradient(colors: [.pictosenergieNatus,]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 30, height: 150)
                    
                    RoundedRectangle(cornerRadius: cornerRadius).fill(LinearGradient(gradient: Gradient(colors: [.pictosMainVerte,]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 30, height: 170)
                    
                    RoundedRectangle(cornerRadius: cornerRadius).fill(LinearGradient(gradient: Gradient(colors: [.blue,]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 30, height: 150)
                    
                    RoundedRectangle(cornerRadius: cornerRadius).fill(LinearGradient(gradient: Gradient(colors: [.pictosConso,]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 30, height: 156)
                    
                    RoundedRectangle(cornerRadius: cornerRadius).fill(LinearGradient(gradient: Gradient(colors: [.pictosDIY,]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 30, height: 178)
                    
                }
                .padding(16.0)
                .frame(width: 0.0)
                
                
                VStack{
                    HStack {
                        Spacer()
                        
                        Image("Pictos2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.all, -11.0)
                        
                        Spacer()
                        
                    }
                    .padding(.bottom, 0.0)
                    
                    
                    
                    .padding(2.0)
                    
                }
                .padding(.top, 14.0)
                VStack{
                    VStack{
                        
                        Image("Victoire")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.bottom, -104.0)
                        
                    }
                }
            }
            //.background(Image("flo"))
            .padding(.top, -9.0)
            .navigationBarTitle(Text("Progression"))
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
struct Progression_Previews: PreviewProvider {
    static var previews: some View {
        Progression(value: 200, cornerRadius: 6)
    }
}
extension Color {
    static let pictosenergieNatus = Color("Progression Energie")
    static let pictosDechets = Color("Progression Dechets")
    static let pictosMainVerte = Color("Progression Main Verte")
    static let pictosMobilité = Color("Progression Mobilite")
    static let pictosConso = Color("Progression Conso")
    static let pictosDIY = Color("Progression DIY")
    
    
    
}
