//
//  AstuceDetailTypeView.swift
//  Nat'usProject
//
//  Created by Marty Jackson Curtis on 23/03/2021.
//

import SwiftUI


struct AstuceDetailTypeView: View {
    var body: some View {
        
        ScrollView {
            
            
            VStack{
                Image("diyinsecthotel")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            
            
            Text("Ce dont vous aurez besoin")
                .font(Font.system(size:26, design: .rounded))
                .foregroundColor(.greenNatus)
                .bold()
                
                .padding(.vertical)
                
            
            

            VStack (alignment: .leading) {
       
                HStack {
                    Image(systemName: "hammer.fill")
                        .resizable()
                        .frame(width: 20 , height: 20)
                        .foregroundColor(.greenNatus)
                    Text("Marteau, Scie, clous")
                }
                
                HStack {
                    Image(systemName: "hammer.fill")
                        .resizable()
                        .frame(width: 20 , height: 20)
                        .foregroundColor(.greenNatus)
                    Text("Des copeaux de bois, des petits pommes de pin.")
                }
                
                HStack {
                    Image(systemName: "hammer.fill")
                        .resizable()
                        .frame(width: 20 , height: 20)
                        .foregroundColor(.greenNatus)
                    Text("De la paille.")
                }
                
                HStack {
                    Image(systemName: "hammer.fill")
                        .resizable()
                        .frame(width: 20 , height: 20)
                        .foregroundColor(.greenNatus)
                    Text("Grillage")
                }
 
                }

            
            Text("Méthode")
                .font(Font.system(size:26, design: .rounded))
                .foregroundColor(.greenNatus)
                .bold()

            
            VStack (alignment: .leading){
                
                
                
                HStack {
                    Image(systemName: "ladybug.fill")
                        .resizable()
                        .frame(width: 20 , height: 20)
                        .foregroundColor(.greenNatus)
                    Text("Choisissez un endroit au calme afin de ne pas effrayer les insectes.")
                        
                }
                
                HStack {
                    Image(systemName: "ladybug.fill")
                        .resizable()
                        .frame(width: 20 , height: 20)
                        .foregroundColor(.greenNatus)
                    Text("Fabriquez les murs et le toit.")
                }
                
                HStack {
                    Image(systemName: "ladybug.fill")
                        .resizable()
                        .frame(width: 20 , height: 20)
                        .foregroundColor(.greenNatus)
                    Text("Remplissez l'abri de paille, de copeaux de bois et de pommes de pin.")
                }
                
                HStack {
                    Image(systemName: "ladybug.fill")
                        .resizable()
                        .frame(width: 20 , height: 20)
                        .foregroundColor(.greenNatus)
                    Text("Mettez un grillage pour que le contenu de l'abri s'échappe")
                }
                
                HStack {
                    Image(systemName: "ladybug.fill")
                        .resizable()
                        .frame(width: 20 , height: 20)
                        .foregroundColor(.greenNatus)
                    Text("Laissez faire la nature.")
                }
      
            }.padding()
            //  .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            .cornerRadius(2)
           
        }.ignoresSafeArea()
    }

}

struct AstuceDetailTypeView_Previews: PreviewProvider {
    static var previews: some View {
        AstuceDetailTypeView()
    }
}
