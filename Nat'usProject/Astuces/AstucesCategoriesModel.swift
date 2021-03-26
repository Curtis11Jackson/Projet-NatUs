//
//  AstucesCategoriesModel.swift
//  NatUs
//
//  Created by Marina FERNANDEZ on 12/03/2021.
//

import Foundation

struct AstucesCategoriesModel {
    let name: String
    
}

let avoirlamainverteAstucesCategorie = AstucesCategoriesModel(name: "Avoir la main verte")
let recyclageAstucesCategorie = AstucesCategoriesModel(name: "Recyclage")
let economiedenergieAstucesCategorie = AstucesCategoriesModel(name: "Economie d'énergie")

let AstucesCatégoriesTab : [AstucesCategoriesModel] = [avoirlamainverteAstucesCategorie, recyclageAstucesCategorie, economiedenergieAstucesCategorie]
