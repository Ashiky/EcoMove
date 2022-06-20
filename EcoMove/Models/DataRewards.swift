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

let payments = [GetInfo(image: "mountains", name: "Virements", icone: "moneybag", price: 20000, subtitle: "Virement à partir de 20€" , descriptif: "")]
                
 let purchase = [
    GetInfo(image: "woman", name: "Decatlhon", icone: "decathlon", price: 3000, subtitle: "Bon d'achat de 20 euros", descriptif: """
                 EcoMove vous a déniché un bon plan de 2022: 20€ de réduction chez Decathlon pour vous faire plaisir ou à vos proches
                 
                 Decathlon a une vaste gamme de produit adéquat pour tous les types de sportifs. Ce large choix contribue au bonheur de tout le monde car les produits sont adaptés aux pratiques, habitudes, et quotidiens différents de chaque sportif. Decathlon est justement là pour vous accompagner dans votre choix.
                 
                 Alors n'attendez pas plus pour vous équiper avec nos meilleurs équipement.
                 
                 Ce bon d’achat est valable sur l'ensemble de notre site.
                 """),
                 GetInfo(image: "darty", name: "FNAC-DARTY", icone: "decathlon", price: 3000, subtitle: "Bon d'achat de 15 euros", descriptif: """
                 EcoMove vous a déniché un bon plan de 2022: 15€ de réduction chez FNAC-DARTY pour vous faire plaisir l’allié incontournable des consommateurs au quotidien et dans la durée
                 
                  Fnac Darty est un leader européen de la distribution de biens culturels, de loisirs, de produits techniques et d’électroménager.
                 
                 Offre valable à partir de 35 euros d'achat, sur internet et tout les magasins de France.
                 
                 Présentez votre bon en caisse ou entrer le sur notre site internet, valable sur tout l'ensemble de nos produits.
                 
                 """),
                 GetInfo(image: "Etam", name: "etam", icone: "decathlon", price: 3000, subtitle: "Bon d'achat de 15 euros", descriptif: """
                 EcoMove vous a déniché un bon plan de 2022: 15€ de réduction chez Etam pour vous faire plaisir ou à vos proches
                 
                 Etam a une vaste gamme de produit de lingerie. Un savoir-faire depuis 1916 bâti dans la lingerie, la mode et le commerce. Ce large choix contribue au bonheur de tout le monde car les produits sont adaptés a tous morphologie.
                 
                 Alors n'attendez pas et profitez de cette offre exclusive
                 
                 Ce bon d’achat est uniquement disponible sur notre site, sur l'ensemble de nos produits.
                 """),
                 GetInfo(image: "decathlon", name: "Decatlhon", icone: "decathlon", price: 3000, subtitle: "Bon d'achat de 10 euros", descriptif: """
                 EcoMove vous a déniché un bon plan de 2022: 10€ de réduction chez décathlon pour vous faire plaisir ou à vos proches
                 
                 Decathlon a une vaste gamme de produit adéquat pour tous les types de sportifs. Ce large choix contribue au bonheur de tout le monde car les produits sont adaptés aux pratiques, habitudes, et quotidiens différents de chaque sportif. Decathlon est justement là pour vous accompagner dans votre choix.
                 
                 Alors n'attendez pas plus pour vous équiper avec nos meilleurs équipement.
                 
                 Ce bon d’achat est uniquement disponible sur notre site, sur l'ensemble de nos produits.
                 """),
 ]
                
let donations = [
    GetInfo(image: "decathlon", name: "Decatlhon", icone: "decathlon", price: 3000, subtitle: "virement à partir de 20€",descriptif: "Bon d'achat de 5 euros"),
                    GetInfo(image: "decathlon", name: "Decatlhon", icone: "decathlon", price: 3000, subtitle: "virement à partir de 20€",descriptif: "Bon d'achat de 5 euros"),
                    GetInfo(image: "decathlon", name: "Decatlhon", icone: "decathlon", price: 3000, subtitle: "virement à partir de 20€",descriptif: "Bon d'achat de 5 euros"),
                    GetInfo(image: "decathlon", name: "Decatlhon", icone: "decathlon", price: 3000, subtitle: "virement à partir de 20€",descriptif: "Bon d'achat de 5 euros"),
                    GetInfo(image: "decathlon", name: "Decatlhon", icone: "decathlon", price: 3000, subtitle: "virement à partir de 20€",descriptif: "Bon d'achat de 5 euros")]


