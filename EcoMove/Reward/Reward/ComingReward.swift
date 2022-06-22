//
//  ComingReward.swift
//  EcoMove
//
//  Created by Tristan Aly on 18/06/2022.
//

import SwiftUI

struct ComingReward: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("20 Juin")
                .font(.title2)
                .padding()
        VStack{
            
            HStack(spacing: 24){
                Image(systemName:"millsign.square.fill")
                    .font(.system(size: 50))
                    .foregroundColor(Color("DarkGreen"))
                VStack(alignment: .leading,spacing: 5){
                Text("Virement de 20€")
                        .font(.title3)
                    Text("12h30")
                        .font(.subheadline)
                }
                Text("400 \(Image(systemName: "millsign.circle.fill"))")
                    .font(.system(size: 30))
                    .foregroundColor(Color("DarkGreen"))
            }
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 8)
            .fill(.white)
            .frame(width: 370)
            .shadow(color: Color("DarkGreen"), radius: 5, x: 2, y: 3))//: VStack
        }
    }
}

struct ComingReward_Previews: PreviewProvider {
    static var previews: some View {
        ComingReward()
    }
}
