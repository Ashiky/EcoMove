//
//  ModalViewChemin.swift
//  EcoMove
//
//  Created by apprenant70 on 29/06/2022.
//

import SwiftUI

struct ModalViewChemin: View {
    var body: some View {
        List {
            HStack { // Marche
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .frame(maxWidth: 35,maxHeight: 35)
                        .foregroundColor(Color("DarkGreen"))
                    Image(systemName: "figure.walk")
                        .foregroundColor(.white)
                }
                VStack(alignment: .leading) {
                    HStack {
                        Text("18 min")
                            .fontWeight(.bold)
                            .font(.title3)
                            .foregroundColor(Color("DarkGreen"))
                    }
                    Text("1,4 km")
                        .font(.title3)
                        .foregroundColor(.gray)
                }
                .padding()
                Spacer()
                Text("10 \(Image(systemName: "millsign.circle.fill"))")
                    .fontWeight(.bold)
                    .font(.title)
                    .foregroundColor(Color("DarkGreen"))
                    .padding()
            }
            Section("Chemin à suivre") {
                HStack { // Départ
                    Image(systemName: "mappin.circle")
                        .foregroundColor(Color("DarkGreen"))
                        .font(.largeTitle)
                    
                    VStack(alignment: .leading) {
                        Text("Partir de :")
                            .font(.title3)
                            .foregroundColor(.gray)
                        
                        Text("Quai des belges")
                            .fontWeight(.bold)
                            .font(.title3)
                            .foregroundColor(Color("DarkGreen"))
                    }
                    .padding(.vertical, 5)
                    .padding(.horizontal, 10)
                }
                HStack { // Étape 1
                    ZStack {
                        Image(systemName: "arrow.turn.up.right")
                            .foregroundColor(Color("DarkGreen"))
                            .font(.largeTitle)
                    }
                    VStack(alignment: .leading) {
                        Text("Tourner à droite sur :")
                            .font(.headline)
                            .foregroundColor(.gray)
                        
                        Text("La Canebière")
                            .fontWeight(.bold)
                            .font(.title3)
                            .foregroundColor(Color("DarkGreen"))
                    }
                    .padding(.vertical, 5)
                    .padding(.horizontal, 10)
                    //                    Spacer()
                    //                    Text("10 \(Image(systemName: "millsign.circle.fill"))")
                    //                        .fontWeight(.bold)
                    //                        .font(.title)
                    //                        .foregroundColor(Color("DarkGreen"))
                    //                        .padding()
                }
                HStack { // Étape 2
                    ZStack {
                        Image(systemName: "arrow.turn.up.left")
                            .foregroundColor(Color("DarkGreen"))
                            .font(.largeTitle)
                    }
                    VStack(alignment: .leading) {
                        Text("Tourner à gauche sur :")
                            .font(.headline)
                            .foregroundColor(.gray)
                        
                        Text("Square Stalingrad")
                            .fontWeight(.bold)
                            .font(.title3)
                            .foregroundColor(Color("DarkGreen"))
                    }
                    .padding(.vertical, 5)
                    .padding(.horizontal, 10)
                    //                    Spacer()
                    //                    Text("10 \(Image(systemName: "millsign.circle.fill"))")
                    //                        .fontWeight(.bold)
                    //                        .font(.title)
                    //                        .foregroundColor(Color("DarkGreen"))
                    //                        .padding()
                }
                HStack { // Étape 3
                    ZStack {
                        Image(systemName: "arrow.turn.up.right")
                            .foregroundColor(Color("DarkGreen"))
                            .font(.largeTitle)
                    }
                    VStack(alignment: .leading) {
                        Text("Tourner à droite sur :")
                            .font(.headline)
                            .foregroundColor(.gray)
                        
                        Text("Cours Joseph Thierry")
                            .fontWeight(.bold)
                            .font(.title3)
                            .foregroundColor(Color("DarkGreen"))
                    }
                    .padding(.vertical, 5)
                    .padding(.horizontal, 10)
                    //                    Spacer()
                    //                    Text("10 \(Image(systemName: "millsign.circle.fill"))")
                    //                        .fontWeight(.bold)
                    //                        .font(.title)
                    //                        .foregroundColor(Color("DarkGreen"))
                    //                        .padding()
                }
                HStack { // Étape 4
                    ZStack {
                        Image(systemName: "arrow.turn.up.right")
                            .foregroundColor(Color("DarkGreen"))
                            .font(.largeTitle)
                    }
                    VStack(alignment: .leading) {
                        Text("Tourner à droite sur :")
                            .font(.headline)
                            .foregroundColor(.gray)
                        
                        Text("Boulevard Longchamp")
                            .fontWeight(.bold)
                            .font(.title3)
                            .foregroundColor(Color("DarkGreen"))
                    }
                    .padding(.vertical, 5)
                    .padding(.horizontal, 10)
                    //                    Spacer()
                    //                    Text("10 \(Image(systemName: "millsign.circle.fill"))")
                    //                        .fontWeight(.bold)
                    //                        .font(.title)
                    //                        .foregroundColor(Color("DarkGreen"))
                    //                        .padding()
                }
                
                HStack { // Arrivée
                    Image(systemName: "mappin.circle")
                        .foregroundColor(Color("DarkGreen"))
                        .font(.largeTitle)
                    
                    VStack(alignment: .leading) {
                        Text("Arrivée à :")
                            .font(.title3)
                            .foregroundColor(.gray)
                        Text("14 boulevard Longchamps, 13001 Marseille")
                            .fontWeight(.bold)
                            .font(.title3)
                            .foregroundColor(Color("DarkGreen"))
                            .lineLimit(1)
                    }
                    .padding(.vertical, 5)
                    .padding(.horizontal, 10)
                }
                
            }
            .font(.callout)
        }
    }
}

struct ModalViewChemin_Previews: PreviewProvider {
    static var previews: some View {
        ModalViewChemin()
    }
}
