//
//  AstuceListByCategoryModel.swift
//  Nat'usProject
//
//  Created by Marty Jackson Curtis on 17/03/2021.
//

import Foundation

struct AstuceByCategoryModel: Identifiable {
  
    let name: String
    let category: String
    let id = UUID()
    let description: String
    let img: String
    
}

let tableauAstuceByCategoryModel: [AstuceByCategoryModel] = [
    astuceMainVerte1,
    astuceMainVerte2,
    astuceMainVerte3,
    astuceMainVerte4,
    astuceMainVerte5,

    astuceDIY1,
    astuceDIY2,
    astuceDIY3,
    astuceDIY4,
    astuceDIY5,
    astuceDIY6
]

let astuceMainVerte1 = AstuceByCategoryModel(name: "Faire son compost", category: "Avoir la main verte", description: "Faire un truc main verte", img: "compost.img")

let astuceMainVerte2 = AstuceByCategoryModel(name: "Protéger les insectes", category: "Avoir la main verte", description: "Faire un truc main verte", img: "insectes")

let astuceMainVerte3 = AstuceByCategoryModel(name: "Planter sur son balcon", category: "Avoir la main verte", description: "Faire un truc main verte", img: "planting")

let astuceMainVerte4 = AstuceByCategoryModel(name: "Protéger la flore", category: "Avoir la main verte", description: "Faire un truc main verte", img: "bio")

let astuceMainVerte5 = AstuceByCategoryModel(name: "Abri pour insectes", category: "Avoir la main verte", description: "Faire un truc main verte", img: "insecthotel")



let astuceDIY1 = AstuceByCategoryModel(name: "Abri pour insectes", category: "Fait Maison", description: "Faire un truc Fait Maison", img: "insecthotel")

let astuceDIY2 = AstuceByCategoryModel(name: "Potager Maison", category: "Fait Maison", description: "Faire un truc Fait Maison", img: "diygarden1")

let astuceDIY3 = AstuceByCategoryModel(name: "Serre", category: "Fait Maison", description: "Faire un truc Fait Maison", img: "diygarden2")

let astuceDIY4 = AstuceByCategoryModel(name: "Etagère pour plantes aromatiques", category: "Fait Maison", description: "Faire un truc Fait Maison", img: "diygarden3")

let astuceDIY5 = AstuceByCategoryModel(name: "Grand abri pour insectes", category: "Fait Maison", description: "Faire un truc Fait Maison", img: "insecthotel1")

let astuceDIY6 = AstuceByCategoryModel(name: "Lustre à fleurs", category: "Fait Maison", description: "Faire un truc Fait Maison", img: "diybulb3")
