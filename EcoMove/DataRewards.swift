//
//  DataRewards.swift
//  EcoMove
//
//  Created by Tristan Aly on 17/06/2022.
//

import Foundation

struct GetInfo{
    var image: String
    var name: String
    var icone: String
    var price: Int
    var subtitle: String
    var descriptif: String
}

let payments = [GetInfo(image: "mountains", name: "virements", icone: "moneybag", price: 20000, subtitle: "Virement à partir de 20€" , descriptif: "")]
                
 let purchase = [GetInfo(image: "woman", name: "Decatlhon", icone: "decathlon", price: 3000, subtitle: "Bon d'achat de 5 euros", descriptif: "Grand texte"),
                 GetInfo(image: "decathlon", name: "Decatlhon", icone: "decathlon", price: 3000, subtitle: "Bon d'achat de 5 euros", descriptif: "Grand texte"),
                 GetInfo(image: "decathlon", name: "Decatlhon", icone: "decathlon", price: 3000, subtitle: "Bon d'achat de 5 euros", descriptif: "Grand texte"),
                 GetInfo(image: "decathlon", name: "Decatlhon", icone: "decathlon", price: 3000, subtitle: "Bon d'achat de 5 euros", descriptif: "Grand texte"),
                 GetInfo(image: "decathlon", name: "Decatlhon", icone: "decathlon", price: 3000, subtitle: "Bon d'achat de 5 euros", descriptif: "Grand texte")]
                
let donations = [
    GetInfo(image: "decathlon", name: "Decatlhon", icone: "decathlon", price: 3000, subtitle: "virement à partir de 20€",descriptif: "Bon d'achat de 5 euros"),
                    GetInfo(image: "decathlon", name: "Decatlhon", icone: "decathlon", price: 3000, subtitle: "virement à partir de 20€",descriptif: "Bon d'achat de 5 euros"),
                    GetInfo(image: "decathlon", name: "Decatlhon", icone: "decathlon", price: 3000, subtitle: "virement à partir de 20€",descriptif: "Bon d'achat de 5 euros"),
                    GetInfo(image: "decathlon", name: "Decatlhon", icone: "decathlon", price: 3000, subtitle: "virement à partir de 20€",descriptif: "Bon d'achat de 5 euros"),
                    GetInfo(image: "decathlon", name: "Decatlhon", icone: "decathlon", price: 3000, subtitle: "virement à partir de 20€",descriptif: "Bon d'achat de 5 euros")
]


