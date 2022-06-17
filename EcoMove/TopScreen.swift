//
//  TopScreen.swift
//  EcoMove
//
//  Created by Tristan Aly on 17/06/2022.
//

import SwiftUI

struct TopScreen: View {
    var body: some View {
        VStack(spacing: 20){
            HStack{
                Text("8000 M")
                    .font(.title3)
                    .foregroundColor(.white)
                   
                    .background(RoundedRectangle(cornerRadius: 8) .fill(Color("DarkGreen"))
                        .frame(width: 80, height: 30))
                Spacer()
                Text("Historique")
                    .foregroundColor(Color("DarkGreen"))
                    .bold()
            }.font(.title)
                .padding(.top, 50)
                
            Text("Valeur en €:")
            Text("4,555 €")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
        }
        .padding()
        .background(Rectangle()
            .fill(Color("LightGreen")))
    }
}

struct TopScreen_Previews: PreviewProvider {
    static var previews: some View {
        TopScreen()
    }
}
