//
//  ScrollPayment.swift
//  EcoMove
//
//  Created by Tristan Aly on 17/06/2022.
//

import SwiftUI

struct ScrollPayment: View {
    
    let payment : GetInfo
    
    var body: some View {
        ZStack(alignment: .bottom){
            Image(payment.image)
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
                            Text(payment.name)
                                .font(.title)
                            Spacer()
                            Image(payment.icone)
                                .resizable()
                                .frame(width: 45, height: 45)
                        }
                        .padding(.horizontal)
                        HStack{
                            Text(payment.subtitle)
                            Spacer()
                            Text("\(payment.price)")
                                .bold()
                                .foregroundColor(Color("DarkGreen"))
                        }.padding(.horizontal)
                    } //:VStack
                ) //: ovarlay
        } //:ZStack
    }
}

struct ScrollPayment_Previews: PreviewProvider {
    static var previews: some View {
        ScrollPayment(payment: payments[0])
    }
}
