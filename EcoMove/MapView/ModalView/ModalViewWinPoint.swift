//
//  ModalWinPointView.swift
//  EcoMove
//
//  Created by apprenant70 on 17/06/2022.
//

import SwiftUI

struct ModalViewWinPoint: View {
    
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color("LightGreen"))
                    .frame(width: 500, height: 130)
            Text("Trajet Terminé !")
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
                .font(.title)
            }
            
                Text("10 \(Image(systemName: "millsign.circle.fill"))")
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .foregroundColor(Color("DarkGreen"))
                .font(.largeTitle)
                .padding(.vertical, 20)
            
            HStack {
                VStack {
                Text("Vous avez économisé")
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("DarkGreen"))
                    .font(.title)
                    .multilineTextAlignment(.center)
                    Text("43 g de Co2")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("DarkGreen"))
                        .font(.title)
                        .multilineTextAlignment(.center)
                    Text("par rapport à \(Image(systemName: "car"))")
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("DarkGreen"))
                        .font(.title)
                        .multilineTextAlignment(.center)
                }
            }
            Text("Bien joué !")
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .foregroundColor(Color("DarkGreen"))
                .font(.largeTitle)

                .multilineTextAlignment(.center)
                .padding()
        }
    }
}

struct ModalViewWinPoint_Previews: PreviewProvider {
    static var previews: some View {
        ModalViewWinPoint()
    }
}
