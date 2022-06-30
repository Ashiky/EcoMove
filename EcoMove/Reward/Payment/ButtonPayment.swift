//
//  ButtonPayment.swift
//  EcoMove
//
//  Created by Tristan Aly on 17/06/2022.
//

import SwiftUI

struct ButtonPayment: View {
    
    var pricePayment = 1356
    
    var body: some View {
        VStack{
            Button{
//               Screen to validate
            }label: {
                if pricePayment < 3000 {
                Text("Il vous manque \(3000 - pricePayment)")
                    .font(.system(size: 25))
                    .padding()
                    .foregroundColor(.white)
                } else {
                    Text("Recevoir un virement")
                        .font(.system(size: 25))
                        .padding()
                        .foregroundColor(.white)
                }

            }.frame(maxWidth: .infinity)
             .background(Color("LightGreen"))
             .cornerRadius(10)
             .padding()
        }
    }
}

struct ButtonPayment_Previews: PreviewProvider {
    static var previews: some View {
        ButtonPayment()
            .previewLayout(.sizeThatFits)
    }
}
