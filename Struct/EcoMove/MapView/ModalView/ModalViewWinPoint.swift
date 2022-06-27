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
            Text("Trajet Terminé !")
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
                .font(.title)
                .padding(.horizontal, 75)
                .padding(.vertical, 50)
                .background(Color("LightGreen"))
            HStack {
                Text("150")
                Text("M")
            }
            
            HStack {
                Text("Vous avez économisé 43 g de Co2 par rapport à \(Image(systemName: "car"))")
                    .multilineTextAlignment(.center)
                    .padding()
            }
            Text("Bien joué !")
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
