////
////  DataBaseTransport.swift
////  EcoMove
////
////  Created by apprenant70 on 21/06/2022.
////
//
//import Foundation
//import MapKit
//import SwiftUI
//
//struct Transports: Identifiable {
//    let id = UUID()
//    let iconT: String
//    let nameT: ligneTransport
//    let colorT: Color
//    let départ: String
//    let terminus: String
//    let stationT: [String]
//    let location: [Location]
//}
//
//struct Location: Identifiable {
//    let id = UUID()
//    let location: CLLocationCoordinate2D
//}
//
//enum ligneTransport {
//    case M1, M2, T1, T2, T3
//}
//
//var transports = [
//    Transports(iconT: "tram.fill.tunnel", nameT: .M1, colorT: .blue, départ: "La Fourragère", terminus: "La Rose",
//               stationT: ["La Fourragère",
//                          "Saint-Barnabé",
//                          "Louis Armand",
//                          "La Blancarde",
//                          "La Timone",
//                          "Baille",
//                          "Castellane",
//                          "Estrangin - Préfecture",
//                          "Vieux-Port",
//                          "Colbert",
//                          "Saint-Charles",
//                          "Réformés Canebière",
//                          "Cinq Avenues Longchamps",
//                          "Chartreux",
//                          "Saint-Just",
//                          "Malpassé",
//                          "Frais Vallon",
//                          "La Rose"],
//               location: [Location(location: CLLocationCoordinate2D(latitude: 43.033773, longitude: 5.424445)), //La fouragère
//                          Location(location:CLLocationCoordinate2D(latitude: 43.3037192, longitude: 5.4195614)), // Saint-Baranabé
//                          Location(location:CLLocationCoordinate2D(latitude: 43.2999708, longitude: 5.4129976)), //Louis Armand
//                          Location(location:CLLocationCoordinate2D(latitude: 43.2991339, longitude: 5.4123692)), //La Blancarde
//                          Location(location:CLLocationCoordinate2D(latitude: 43.2909993, longitude: 5.4001161)), //La Timone
//                          Location(location:CLLocationCoordinate2D(latitude: 43.28813934326172, longitude: 5.392107963562012)), //Baille
//                          Location(location:CLLocationCoordinate2D(latitude: 43.28594207763672, longitude: 5.383809566497803)), //Castellane
//                          Location(location:CLLocationCoordinate2D(latitude: 43.2901874229198, longitude: 5.37799618846897)), //Estrangin - Préfecture
//                          Location(location:CLLocationCoordinate2D(latitude: 43.29535703569381, longitude: 5.374391299552914)), //Vieux-Port
//                          Location(location:CLLocationCoordinate2D(latitude: 43.30007333829382, longitude: 5.374557596511758)), //Colbert
//                          Location(location:CLLocationCoordinate2D(latitude: 43.30301693777021, longitude: 5.380426269836303)), //Saint-Charles
//                          Location(location:CLLocationCoordinate2D(latitude: 43.299842213631266, longitude: 5.385341140655391)), //Réformés Canebière
//                          Location(location:CLLocationCoordinate2D(latitude: 43.30431808511653, longitude: 5.39697388115286)), //Cinq Avenues Longchamps
//                          Location(location:CLLocationCoordinate2D(latitude: 5.39697388115286, longitude: 5.4032264)), //Chartreux
//                          Location(location:CLLocationCoordinate2D(latitude: 43.3163622, longitude: 5.4053433)), //Saint-Just
//                          Location(location:CLLocationCoordinate2D(latitude: 43.3209317530739, longitude: 5.416426448548983)), //Malpassé
//                          Location(location:CLLocationCoordinate2D(latitude: 43.3250085, longitude: 5.424552)), //Frais Vallon
//                          Location(location:CLLocationCoordinate2D(latitude: 43.3329552, longitude: 5.4296607))]), //La Rose
//    Transports(iconT: "tram.fill.tunnel", nameT: .M2, colorT: .red, départ: "Gèze", terminus: "Sainte-Marguerite Dromel",
//               stationT: ["Gèze",
//                          "Bougainville",
//                          "National",
//                          "Désirée Clary",
//                          "Joliette",
//                          "Jules Guesde",
//                          "Saint-Charles",
//                          "Noailles",
//                          "Notre-Dame du Mont",
//                          "Castellane",
//                          "Périer",
//                          "Rond-Point du Prado",
//                          "Sainte-Marguerite Dromel"
//                         ],
//               location: [Location(location: CLLocationCoordinate2D(latitude: 43.32793218447303, longitude: 5.367310875467637)), // Gèze
//                          Location(location: CLLocationCoordinate2D(latitude: 43.320744376195414, longitude: 5.3713794981476015)), // Bougainville
//                          Location(location: CLLocationCoordinate2D(latitude: 43.31527377266834, longitude: 5.3731482154306764)), // National
//                          Location(location: CLLocationCoordinate2D(latitude: 43.309359078905814, longitude: 5.372602106884772)), // Désirée Clary
//                          Location(location: CLLocationCoordinate2D(latitude: 43.30455200823521, longitude: 5.3672126139659815)), // Joliette
//                          Location(location: CLLocationCoordinate2D(latitude: 43.30191970253235, longitude: 5.373805360403634)), // Jules Guesde
//                          Location(location: CLLocationCoordinate2D(latitude: 43.30301693777021, longitude: 5.380426269836303)), // Saint-Charles
//                          Location(location: CLLocationCoordinate2D(latitude: 43.29744565697901, longitude: 5.380782059034566)), // Noailles
//                          Location(location: CLLocationCoordinate2D(latitude: 43.29308461342391, longitude: 5.383405771644698)), // Notre-Dame du Mont
//                          Location(location: CLLocationCoordinate2D(latitude: 43.28594207763672, longitude: 5.383809566497803)), // Castellane
//                          Location(location: CLLocationCoordinate2D(latitude: 43.27950178959782, longitude: 5.387578930818604)), // Périer
//                          Location(location: CLLocationCoordinate2D(latitude: 43.27140927666681, longitude: 5.392589297258423)), // Rond-Point du Prado
//                          Location(location: CLLocationCoordinate2D(latitude: 43.27142623007581, longitude: 5.404126438236991)) // Sainte-Marguerite Dromel
//                         ]),
//    Transports(iconT: "tram", nameT: .T1, colorT: .orange, départ: "Les Caillols", terminus: "Noailles",
//               stationT: ["Les Caillols",
//                          "William Booth",
//                          "La Grognarde",
//                          "Air Bal",
//                          "La Boiseraie",
//                          "La Parette",
//                          "Saint-Pierre",
//                          "Sainte-Thérèse",
//                          "La Blancarde",
//                          "Jean Martin",
//                          "George",
//                          "Camas",
//                          "Eugène Pierre",
//                          "Noailles"
//        ],
//               location: [Location(location: CLLocationCoordinate2D(latitude: 43.32793218447303, longitude: 5.367310875467637)), // Les Caillols
//                          Location(location: CLLocationCoordinate2D(latitude: 43.320744376195414, longitude: 5.3713794981476015)), // William Booth
//                          Location(location: CLLocationCoordinate2D(latitude: 43.31527377266834, longitude: 5.3731482154306764)), // La Grognarde
//                          Location(location: CLLocationCoordinate2D(latitude: 43.309359078905814, longitude: 5.372602106884772)), // Air Bel
//                          Location(location: CLLocationCoordinate2D(latitude: 43.30455200823521, longitude: 5.3672126139659815)), // La Boiseraie
//                          Location(location: CLLocationCoordinate2D(latitude: 43.30191970253235, longitude: 5.373805360403634)), // La Parette
//                          Location(location: CLLocationCoordinate2D(latitude: 43.30301693777021, longitude: 5.380426269836303)), // Saint-Pierre
//                          Location(location: CLLocationCoordinate2D(latitude: 43.29744565697901, longitude: 5.380782059034566)), // Sainte-Thérèse
//                          Location(location: CLLocationCoordinate2D(latitude: 43.29594248331303, longitude: 5.4064506430609915)), // La Blancarde
//                          Location(location: CLLocationCoordinate2D(latitude: 43.28594207763672, longitude: 5.383809566497803)), // Jean Martin
//                          Location(location: CLLocationCoordinate2D(latitude: 43.27950178959782, longitude: 5.387578930818604)), // George
//                          Location(location: CLLocationCoordinate2D(latitude: 43.27140927666681, longitude: 5.392589297258423)), // Camas
//                          Location(location: CLLocationCoordinate2D(latitude: 43.27142623007581, longitude: 5.404126438236991)), // Eugène Pierre
//                          Location(location: CLLocationCoordinate2D(latitude: 43.27142623007581, longitude: 5.404126438236991)) // Noailles
//               ]),
//    Transports(iconT: "tram", nameT: .T2, colorT: .yellow, départ: "La Blancarde", terminus: "Arenc Le Silo",
//               stationT: ["La Blancarde",
//                          "Foch Boisson",
//                          "Foch Sakakini",
//                          "Cinq Avenues",
//                          "Longchamps",
//                          "National",
//                          "Réformés Canebière",
//                          "Canebière Garibaldi",
//                          "Canebière Capucins",
//                          "Belsunce Alcazar",
//                          "Sadi Carnot",
//                          "République Dames",
//                          "Joliette",
//                          "Euroméditerranée Gantès",
//                          "Arenc Le Silo"
//               ],
//               location: [Location(location: CLLocationCoordinate2D(latitude: 43.296635499328815, longitude: 5.405519916532824)), // La Blancarde
//                          Location(location: CLLocationCoordinate2D(latitude: 43.320744376195414, longitude: 5.3713794981476015)), // Foch Boisson
//                          Location(location: CLLocationCoordinate2D(latitude: 43.31527377266834, longitude: 5.3731482154306764)), // Foch Sakakini
//                          Location(location: CLLocationCoordinate2D(latitude: 43.309359078905814, longitude: 5.372602106884772)), // Cinq Avenues
//                          Location(location: CLLocationCoordinate2D(latitude: 43.30455200823521, longitude: 5.3672126139659815)), // Longchamps
//                          Location(location: CLLocationCoordinate2D(latitude: 43.30191970253235, longitude: 5.373805360403634)), // National
//                          Location(location: CLLocationCoordinate2D(latitude: 43.30301693777021, longitude: 5.380426269836303)), // Réformés Canebière
//                          Location(location: CLLocationCoordinate2D(latitude: 43.29744565697901, longitude: 5.380782059034566)), // Canebière Garibaldi
//                          Location(location: CLLocationCoordinate2D(latitude: 43.29308461342391, longitude: 5.383405771644698)), // Canebière Capucins
//                          Location(location: CLLocationCoordinate2D(latitude: 43.28594207763672, longitude: 5.383809566497803)), // Belsunce Alcazar
//                          Location(location: CLLocationCoordinate2D(latitude: 43.27950178959782, longitude: 5.387578930818604)), // Sadi Carnot
//                          Location(location: CLLocationCoordinate2D(latitude: 43.27140927666681, longitude: 5.392589297258423)), // République Dames
//                          Location(location: CLLocationCoordinate2D(latitude: 43.27142623007581, longitude: 5.404126438236991)), // Joliette
//                          Location(location: CLLocationCoordinate2D(latitude: 43.27140927666681, longitude: 5.392589297258423)), //  Euroméditerranée Gantès
//                          Location(location: CLLocationCoordinate2D(latitude: 43.27142623007581, longitude: 5.404126438236991)) // Arenc Le Silo
//               ]),
//    Transports(iconT: "tram", nameT: .T3, colorT: .green, départ: "Castellane", terminus: "Arenc Le Silo",
//               stationT: ["Castellane",
//                          "Rome Dragon",
//                          "Place de Rome",
//                          "Rome Davso",
//                          "Cours Saint-Louis",
//                          "Belsunce Alcazar",
//                          "Sadi Carnot",
//                          "République Dames",
//                          "Joliette",
//                          "Euroméditerranée Gantès",
//                          "Arenc Le Silo"
//               ],
//               location: [Location(location: CLLocationCoordinate2D(latitude: 43.32793218447303, longitude: 5.367310875467637)), // Castellane
//                          Location(location: CLLocationCoordinate2D(latitude: 43.320744376195414, longitude: 5.3713794981476015)), // Rome Dragon
//                          Location(location: CLLocationCoordinate2D(latitude: 43.31527377266834, longitude: 5.3731482154306764)), // Place de Rome
//                          Location(location: CLLocationCoordinate2D(latitude: 43.309359078905814, longitude: 5.372602106884772)), // Rome Davso
//                          Location(location: CLLocationCoordinate2D(latitude: 43.30455200823521, longitude: 5.3672126139659815)), // Cours Saint-Louis
//                          Location(location: CLLocationCoordinate2D(latitude: 43.30191970253235, longitude: 5.373805360403634)), //
//                          Location(location: CLLocationCoordinate2D(latitude: 43.30301693777021, longitude: 5.380426269836303)), //
//                          Location(location: CLLocationCoordinate2D(latitude: 43.29744565697901, longitude: 5.380782059034566)), //
//                          Location(location: CLLocationCoordinate2D(latitude: 43.29308461342391, longitude: 5.383405771644698)), //
//                          Location(location: CLLocationCoordinate2D(latitude: 43.28594207763672, longitude: 5.383809566497803)), //
//                          Location(location: CLLocationCoordinate2D(latitude: 43.27950178959782, longitude: 5.387578930818604)) //
//               ])
//]
