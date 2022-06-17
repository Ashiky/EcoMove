//
//  ScrollPurchase.swift
//  EcoMove
//
//  Created by Tristan Aly on 17/06/2022.
//

import SwiftUI

struct ScrollPurchase: View {
    
    let bonpurchase: GetInfo
    
    var body: some View {
        VStack{
            Image(bonpurchase.image)
                .resizable()
                .frame(width: 350, height: 200)
                .cornerRadius(8)
                .padding()
            HStack{
            Text(bonpurchase.name)
                    .font(.largeTitle)
                Spacer()
            Image(bonpurchase.icone)
                    .resizable()
                    .frame(width: 90, height: 30)
            }.padding(.horizontal)
            HStack{
            Text(bonpurchase.subtitle)
                Spacer()
            Text("\(bonpurchase.price)")
                    .bold()
                    .foregroundColor(Color("DarkGreen"))
            }.padding(.bottom)
                .padding(.horizontal)
        }///VStack
        .background(RoundedRectangle(cornerRadius: 8)
            .stroke(Color("greenColor"))
            .shadow(color: .black, radius: 3, x: -2, y: 1))
        .padding()
        .foregroundColor(.black)
        }
    }


struct ScrollPurchase_Previews: PreviewProvider {
    static var previews: some View {
        ScrollPurchase(bonpurchase: purchase[0])
    }
}
