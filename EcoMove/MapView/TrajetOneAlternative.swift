//
//  TrajetOneAlternative.swift
//  EcoMove
//
//  Created by Tristan Aly on 29/06/2022.
//

import SwiftUI

struct TrajetOneAlternative: View {
    var body: some View {
        HStack(alignment: .top){
            Image(systemName: "figure.walk")
                .resizable()
                .frame(width: 30, height: 40)
                .padding(10)
                .foregroundColor(Color("DarkGreen"))
            VStack(alignment: .leading, spacing: 10){
                Text("10:58 - 11:05")
                    .font(.title2)
                    .bold()
                HStack(spacing: 20){
                    Image(systemName: "figure.walk")
                    Text("> ...")
                }.font(.title2)
            }
            Spacer()
            VStack(alignment: .trailing, spacing: 10){
                Text("14 min")
                    .bold()
                Text("50 \(Image(systemName: "millsign.circle.fill"))")
                    .foregroundColor(Color("DarkGreen"))
            }.font(.title)
        }.padding()
    }
}

struct TrajetOneAlternative_Previews: PreviewProvider {
    static var previews: some View {
        TrajetOneAlternative()
    }
}
