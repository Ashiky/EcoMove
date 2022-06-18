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
                Text("8000 \(Image(systemName: "millsign.square.fill"))")
                    .font(.title2)
                    .bold()
                    .foregroundColor(Color("DarkGreen"))
                Spacer()
                NavigationLink {
                    HistoryView()
                } label: {
                Text("Historique")
                    .font(.subheadline)
                    .foregroundColor(.white)
                    .background(RoundedRectangle(cornerRadius: 16) .fill(Color("DarkGreen"))
                        .frame(width: 90, height: 30))
                }
            }.font(.title)
                .padding(.top, 50)
            
            Text("Valeur en €")
                .foregroundColor(.white)
            Text("4,555 €")
                .font(.title)
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
