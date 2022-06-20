//
//  ButtonPayment.swift
//  EcoMove
//
//  Created by Tristan Aly on 17/06/2022.
//

import SwiftUI

struct ButtonPayment: View {
    
    var pricePayment = 8000
    
    var body: some View {
        VStack{
            Spacer()
            HStack{
                
            }
            Button{
//               Screen to validate
            }label: {
                if pricePayment < 20000 {
                Text("Il vous manque \(20000 - pricePayment)")
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
    }
}
