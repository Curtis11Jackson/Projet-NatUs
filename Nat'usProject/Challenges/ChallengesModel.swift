//
//  ChallengesModel.swift
//  Profil
//
//  Created by CHRISTOPHE LEHOUSSINE on 2021-03-09.
//

import Foundation

struct ChallengesModel: Identifiable {
  
    let name: String
    let category: String
    let id = UUID()
    let description: String
    let goal: String
    let img: String
    
}

let tableau: [ChallengesModel] = [
    challengeCompost,
    challengeInsectes,
    challengeBio,
    challengeFlore,
]

let challengeCompost = ChallengesModel(name: "Compost", category:"Avoir la main verte", description: "Utilisés de manière naturelle et transformés en compost, vos déchets deviennent un formidable engrais à utiliser en pleine terre, dans vos potagers mais aussi dans les jardinières de vos balcons ou plantes d’intérieur.", goal: "Créer ton propre compost et utilise le comme engrais !"
, img: "compost.img")

let challengeInsectes = ChallengesModel(name: "Protection des insectes", category:"Avoir la main verte", description: "Les insectes de plus en plus menacés à cause de la destruction de leur habitat naturel se retrouvent sans abris et sont de moins en moins nombreux.\nTrès importants pour la biodiversité, il faut donc les aider !", goal: "Construire un hôtel à insectes ou un simple abri pour leur préservation !"
, img: "insectes")

let challengeBio = ChallengesModel(name: "La biodiversité", category:"Avoir la main verte",  description: "test", goal: "Créer ton propre compost et utilise le comme engrais !"
, img: "balcon")


let challengeFlore = ChallengesModel(name: "La flore de mon jardin", category:"Avoir la main verte",  description: "test", goal: "Créer ton propre compost et utilise le comme engrais !"
, img: "bio")



//let compostLine = ChallengeLine(nom: "Compost", img:"compost.img", button: "Je me lance")
//let insectesLine = ChallengeLine(nom: "Les insectes", img:"", button: "Je me lance")
//let bioLine = ChallengeLine(nom: "La biodiversité sur mon balcon", img:"", button: "Je me lance")
//let floreLine = ChallengeLine(nom: "La flore de mon jardin", img:"", button: "Je me lance")
