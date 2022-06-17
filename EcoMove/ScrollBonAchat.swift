//
//  ScrollBonAchat.swift
//  EcoMove
//
//  Created by Tristan Aly on 17/06/2022.
//

import SwiftUI

struct ScrollBonAchat: View {
    
    let bonpurchase: GetInfo
    
    var body: some View {
        ZStack(alignment: .bottom){
            Image(bonpurchase.image)
                .resizable()
                .frame(width: 350, height: 250)
                .cornerRadius(8)
                .shadow(color: .black.opacity(0.2), radius: 2, x: 2, y: 1)
                .padding()
            Rectangle()
                .fill(.white)
                .frame(width: 350,height: 100,alignment: .bottom)
                .cornerRadius(8)
                .shadow(color: .black.opacity(0.3), radius: 5, x: 4, y: 3)
                .overlay(
                    VStack{
                        HStack{
                            Text(bonpurchase.name)
                                .font(.largeTitle)
                            Spacer()
                            Image(bonpurchase.icone)
                                .resizable()
                                .frame(width: 100, height: 30)
                        }
                        .padding(.horizontal)
                        HStack{
                            Text(bonpurchase.subtitle)
                            Spacer()
                            Text("\(bonpurchase.price)")
                                .bold()
                                .foregroundColor(Color("DarkGreen"))
                        }.padding(.horizontal)
                    } //:VStack
                ) //: ovarlay
        } //:ZStack
    }
}



struct ScrollBonAchat_Previews: PreviewProvider {
    static var previews: some View {
        ScrollBonAchat(bonpurchase: purchase[0])
    }
}
