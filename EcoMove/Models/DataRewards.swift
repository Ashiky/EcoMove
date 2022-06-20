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

let payments = [
    GetInfo(image: "mountains", name: "Virements", icone: "moneybag", price: 20000, subtitle: "Virement à partir de 20€" , descriptif: """
Virez 20, 30, 70€, directement sur votre compte bancaire

Choisissez le montant que vous voulez en cliquant sur "Recevoir un virement"

Nous vous demanderons votre RIB et votre carte d'identité afin d'effectuer le virement
sous 15 jours Tous est entierement sécurisé.

Offrez-vous une belle récompense aprés toutes ces bonnes actions qui ont contibuer l'environnement 
"""),
    GetInfo(image: "mountains", name: "PayPal", icone: "moneybag", price: 20000, subtitle: "Virement à partir de 20€" , descriptif: """
Virez 20, 30, 70€, directement sur votre compte PayPal

Choisissez le montant que vous voulez en cliquant sur "Recevoir un virement"

Virement sous 5 jours

Offrez-vous une belle récompense aprés toutes ces bonnes actions qui ont contibuer l'environnement
""")]

let purchase = [
    GetInfo(image: "woman", name: "Decatlhon", icone: "decathlon", price: 3000, subtitle: "Bon d'achat de 20 euros", descriptif: """
                 EcoMove vous a déniché un bon plan de 2022: 20€ de réduction chez Decathlon pour vous faire plaisir ou à vos proches
                 
                 Decathlon a une vaste gamme de produit adéquat pour tous les types de sportifs. Ce large choix contribue au bonheur de tout le monde car les produits sont adaptés aux pratiques, habitudes, et quotidiens différents de chaque sportif. Decathlon est justement là pour vous accompagner dans votre choix.
                 
                 Alors n'attendez pas plus pour vous équiper avec nos meilleurs équipement.
                 
                 Ce bon d’achat est valable sur l'ensemble de notre site.
                 """),
    GetInfo(image: "dartyImg", name: "FNAC-DARTY", icone: "darty", price: 3000, subtitle: "Bon d'achat de 15 euros", descriptif: """
                 EcoMove vous a déniché un bon plan de 2022: 15€ de réduction chez FNAC-DARTY pour vous faire plaisir l’allié incontournable des consommateurs au quotidien et dans la durée
                 
                  Fnac Darty est un leader européen de la distribution de biens culturels, de loisirs, de produits techniques et d’électroménager.
                 
                 Offre valable à partir de 35 euros d'achat, sur internet et tout les magasins de France.
                 
                 Présentez votre bon en caisse ou entrer le sur notre site internet, valable sur tout l'ensemble de nos produits.
                 
                 """),
    GetInfo(image: "etam", name: "Etam", icone: "etamIcon", price: 3000, subtitle: "Bon d'achat de 15 euros", descriptif: """
                 EcoMove vous a déniché un bon plan de 2022: 15€ de réduction chez Etam pour vous faire plaisir ou à vos proches
                 
                 Etam a une vaste gamme de produit de lingerie. Un savoir-faire depuis 1916 bâti dans la lingerie, la mode et le commerce. Ce large choix contribue au bonheur de tout le monde car les produits sont adaptés a tous morphologie.
                 
                 Alors n'attendez pas et profitez de cette offre exclusive
                 
                 Ce bon d’achat est uniquement disponible sur notre site, sur l'ensemble de nos produits.
                 """),
    GetInfo(image: "woman", name: "Decatlhon", icone: "decathlon", price: 3000, subtitle: "Bon d'achat de 10 euros", descriptif: """
                 EcoMove vous a déniché un bon plan de 2022: 10€ de réduction chez décathlon pour vous faire plaisir ou à vos proches
                 
                 Decathlon a une vaste gamme de produit adéquat pour tous les types de sportifs. Ce large choix contribue au bonheur de tout le monde car les produits sont adaptés aux pratiques, habitudes, et quotidiens différents de chaque sportif. Decathlon est justement là pour vous accompagner dans votre choix.
                 
                 Alors n'attendez pas plus pour vous équiper avec nos meilleurs équipement.
                 
                 Ce bon d’achat est uniquement disponible sur notre site, sur l'ensemble de nos produits.
                 """),
]

struct GetInfoDon{
    var image: String
    var name: String
    var icone: String
    var Donné: Int
    var objectif: Int
    var subtitle: String
    var descriptif: String
    var donateur: Int
}

let donations = [
    GetInfoDon(image: "croixR", name: "Ecole pour 800 enfants", icone: "croixRouge", Donné: 70000, objectif: 3500000, subtitle: "Financez la réparation de 2 établissement scolaire", descriptif: """
                        Les bénévoles de la Croix-Rouge française s’engagent quotidiennement dans les missions les plus diverses. Ils investissent leur temps et leur énergie pour venir en aide et soulager les souffrances.
                        
                        Par leur dévouement, nos 60 000 bénévoles entretiennent l’espoir d’un lendemain meilleur auprès de toutes les personnes en situation de vulnérabilité.
                        Ces interventions nécessitent des moyens importants et nous avons besoin de vous pour continuer nos actions. Chaque don compte !
                        
                        Si chaque jour, nos bénévoles peuvent agir concrètement sur le terrain, c’est grâce à vos dons ponctuels ou dons réguliers. Mobilisez-vous à nos côtés pour les aider. Faites un don !
                        """,donateur: 67890),
    GetInfoDon(image: "resto", name: "Distribution de repas", icone: "restoCoeur", Donné: 80000, objectif: 300000, subtitle: "Financez la réparation de 2 établissement scolaire", descriptif: """
                                    Les bénévoles du resto du coeur s’engagent quotidiennement dans les missions les plus diverses. Ils investissent leur temps et leur énergie pour venir en aide et soulager les souffrances.
                                    
                                    les Restaurants du Cœur ont pour but « d’aider et d’apporter une assistance bénévole aux personnes démunies, notamment dans le domaine alimentaire par l’accès à des repas gratuits, et par la participation à leur insertion sociale et économique, ainsi qu’à toute action contre la pauvreté sous toutes ses formes
                                    
                                    Si chaque jour, nos bénévoles peuvent agir concrètement sur le terrain, c’est grâce à vos dons ponctuels ou dons réguliers. Mobilisez-vous à nos côtés pour les aider. Faites un don !
                                    """, donateur: 3000),
    GetInfoDon(image: "arbre", name: "Plantez 100 000 arbres", icone: "sosArbre", Donné: 500000, objectif: 10000000, subtitle: "et redonnez un emploi aux populations locales en situation d'extreme pauvreté", descriptif: """
                                    Notre philosophie est de créer des écosystèmes durables et de permettre aux paysans de faire face aux coûts initiaux de plantation des arbres, en garantissant une indépendance alimentaire et des opportunités de revenus.
                                    
                                    Bénéfices environnementaux
                                    Tous les arbres sont bons pour l’environnement : ils absorbent du CO2, émettent de l’oxygène, favorisent la biodiversité, luttent contre l’érosion des sols et bien plus encore.
                                    
                                    Si chaque jour, nos bénévoles peuvent agir concrètement sur le terrain, c’est grâce à vos dons ponctuels ou dons réguliers. Mobilisez-vous à nos côtés pour les aider. Faites un don !
                                    """, donateur: 20700),
    
]
