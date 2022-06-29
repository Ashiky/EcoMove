//
//  TrajetOne.swift
//  EcoMove
//
//  Created by Tristan Aly on 29/06/2022.
//

import SwiftUI

struct TrajetOne: View {
    
    var body: some View {
        HStack(alignment: .top){
            Image(systemName: "tram.fill.tunnel")
                .resizable()
                .frame(width: 40, height: 40)
                .padding(10)
                .foregroundColor(Color("DarkGreen"))
            VStack(alignment: .leading, spacing: 10){
                Text("10:58 - 11:05")
                    .font(.title2)
                    .bold()
                HStack(spacing: 20){
                    Image(systemName: "tram.fill.tunnel")
                    Text(">")
                    Image(systemName: "figure.walk")
                }.font(.title2)
                HStack{
                    Text("1.70")
                Image(systemName: "eurosign.circle")
                }.font(.title3)
            }
            Spacer()
            VStack(alignment: .trailing, spacing: 10){
                Text("7 min")
                    .bold()
                Text("20 \(Image(systemName: "millsign.circle.fill"))")
                    .foregroundColor(Color("DarkGreen"))
            }.font(.title)
        }.padding()
    }
}

struct TrajetOne_Previews: PreviewProvider {
    static var previews: some View {
        TrajetOne()
    }
}
