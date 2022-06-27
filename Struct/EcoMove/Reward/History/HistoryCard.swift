//
//  HistoryCard.swift
//  EcoMove
//
//  Created by Tristan Aly on 18/06/2022.
//

import SwiftUI

struct HistoryCard: View {
    var body: some View {
        VStack(spacing: 2){
            HStack{
                Text("@Chris_REDFIELD")
                    .foregroundColor(Color("DarkGreen"))
                    .bold()
                Spacer()
            }.padding()
            Image("ecomove")
                .resizable()
                .frame(width: 110, height: 110,alignment: .center)
                .clipShape(Circle())
                .shadow(color: Color("DarkGreen"), radius: 5, x: 3, y: 2.5)
            HStack{
                Spacer()
                Image(systemName: "chevron.right.2")
            }.font(.title)
                .foregroundColor(Color("DarkGreen"))
                .font(Font.system(size: 60, weight: .bold))
                .padding()
        }.padding()
            .background( RoundedRectangle(cornerRadius: 8)
                .fill(Color("LightGreen"))
                .frame(width: 350, height: 200, alignment: .center)
                .rotationEffect(.degrees(2))
                .shadow(color: Color("DarkGreen"), radius: 2, x: 4, y: 3))
    }
}

struct HistoryCard_Previews: PreviewProvider {
    static var previews: some View {
        HistoryCard()
    }
}

