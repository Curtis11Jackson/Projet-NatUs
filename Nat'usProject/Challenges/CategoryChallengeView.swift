//
//  CategoryChallengeView.swift
//  Projet Nat'us
//
//  Created by Marty Jackson Curtis on 12/03/2021.
//

import SwiftUI

struct CategoryChallengeView: View {
    let listCategoryChallenge: [CategoryChallenge]
    
    let columns = [
        GridItem(.fixed(120)),
        GridItem(.fixed(120)),
        GridItem(.fixed(120)),
    ]
    var body: some View {
        NavigationView {
            VStack{
                Image("challenge")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 245)
                    .padding(.bottom, 25)
                    .clipShape(Rectangle())
                    .shadow(color: .gray, radius: 4, x: 3, y: 3)
                
                Text("Catégories de challenges")
                    .font(.title2)
                    .padding( 15)
                
                Divider()
                    .padding(.bottom, 15)
                    .frame(width: 200)
                
                LazyVGrid(columns: columns, spacing: 25){
                    
                    ForEach(CategoryChallengeTable) { category in
                        NavigationLink (
                            destination: challengelist(categoryChallengeList:category ),
                            label: {
                                VStack{
                                    Image(category.categoryImage)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 105.0)
                                        .clipped()
                                        .cornerRadius(10)
                                        .shadow(color: .gray, radius: 4, x: 3, y: 3)
                                    Text(category.categoryNameShort).foregroundColor(.primary)
                                }
                            })
                    }
                    Spacer()
                }
                
            }      .navigationBarTitle(Text("Challenges"))
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





struct CategoryChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryChallengeView(listCategoryChallenge: CategoryChallengeTable)
            .preferredColorScheme(.light)
    }
}

