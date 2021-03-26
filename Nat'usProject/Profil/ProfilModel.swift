//
//  ProfilModel.swift
//  Nat'Us
//
//  Created by Marty Jackson Curtis on 09/03/2021.
//

import Foundation

struct ProfilModel: Identifiable {
    var id = UUID()
    
    let photo: String
    var name: String
    var firstName: String
    var pseudo: String
    var email: String
    var password: String
    var challengesDone: Int
    var trophees: Int
    var followers: Int
    var following: Int
    
}

let curtisProfil = ProfilModel(photo: "profilephoto", name: "Jackson", firstName: "Curtis", pseudo: "@curt11", email: "jacksoncurt11@gmail.com",password: "*%*15fgklcez", challengesDone: 5, trophees: 4, followers: 140, following: 11)


let phonexayProfil = ProfilModel(photo: "String", name: "Kasemrath", firstName: "Phonexay", pseudo: "@phonesay12", email: "p.kasemrath@gmail.com",password: "*%*15fgklcez", challengesDone: 5, trophees: 4, followers: 140, following: 11)

let marinaProfil = ProfilModel(photo: "String", name: "Fernandez", firstName: "Marina",pseudo: "@marina13", email: "m.fernandez@gmail.com",password: "*%*15fgklcez", challengesDone: 5, trophees: 4, followers: 140, following: 11)

let christopheProfil = ProfilModel(photo: "String", name: "LeHoussine", firstName: "Christophe",pseudo: "@christophe14", email: "c.lehoussine@gmail.com",password: "*%*15fgklcez", challengesDone: 5, trophees: 4, followers: 140, following: 11)

let ProfilListTable: [ProfilModel] = [
    curtisProfil,
    phonexayProfil,
    marinaProfil,
    christopheProfil
]

