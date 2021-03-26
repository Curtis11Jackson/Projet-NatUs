//
//  ListCategoryChallengeModel.swift
//  Projet Nat'us
//
//  Created by Marty Jackson Curtis on 12/03/2021.
//

import Foundation

struct CategoryChallenge: Identifiable {
    var id = UUID()
    
    var categoryName: String
    var categoryImage: String
    var categoryNameShort: String

}

let greenhandsChallenge = CategoryChallenge(categoryName: "Avoir la main verte", categoryImage: "mainverte", categoryNameShort: "Main Verte")

let wasteChallenge = CategoryChallenge(categoryName: "Réduire ses \nDéchets", categoryImage: "dechets", categoryNameShort: "Déchets")

let waterChallenge = CategoryChallenge(categoryName: "Economie \nd'énérgie", categoryImage: "ampouleeconomique", categoryNameShort: "Energie")

let mobilityChallenge = CategoryChallenge(categoryName: "Mobilité", categoryImage: "mobilite", categoryNameShort: "Mobilité")

let consoChallenge = CategoryChallenge(categoryName: "Améliorer sa \nConso", categoryImage: "conso", categoryNameShort: "Consommation")

let diyChallenge = CategoryChallenge(categoryName: "Fait Maison", categoryImage: "diy", categoryNameShort: "DIY")

let CategoryChallengeTable: [CategoryChallenge] = [
    greenhandsChallenge,
    wasteChallenge,
    waterChallenge,
    mobilityChallenge,
    consoChallenge,
    diyChallenge
]

