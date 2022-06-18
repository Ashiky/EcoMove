//
//  HistoryTravel.swift
//  EcoMove
//
//  Created by Tristan Aly on 18/06/2022.
//

import SwiftUI

struct HistoryTravel: View {
    var body: some View {
        VStack{
            HStack(spacing: 24){
                Image(systemName: "leaf.arrow.triangle.circlepath")
                    .font(.system(size: 40))
                    .foregroundColor(Color("DarkGreen"))
                VStack(alignment: .leading){
                Text("Trajet économisé")
                        .font(.title3)
                    Text("8h30")
                        .font(.subheadline)
                }
                Text("40 \(Image(systemName: "millsign.square.fill"))")
                    .font(.system(size: 30))
                    .foregroundColor(Color("DarkGreen"))
            }
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 8)
            .fill(.white)
            .shadow(color: Color("DarkGreen"), radius: 5, x: 2, y: 3))
    }
}

struct HistoryTravel_Previews: PreviewProvider {
    static var previews: some View {
        HistoryTravel()
    }
}
