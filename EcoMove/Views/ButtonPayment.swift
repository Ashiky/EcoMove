//
//  ButtonPayment.swift
//  EcoMove
//
//  Created by Tristan Aly on 17/06/2022.
//

import SwiftUI

struct ButtonPayment: View {
    
    var pricePayment = 20000
    
    var body: some View {
        VStack{
            Spacer()
            HStack{
                
            }
            Button{
//               Screen to validate
            }label: {
                Text("Il vous manque \(pricePayment - 8000)")
                    .font(.system(size: 25))
                    .padding()
                    .foregroundColor(.white)

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
