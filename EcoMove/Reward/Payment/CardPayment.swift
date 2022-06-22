//
//  CardPayment.swift
//  EcoMove
//
//  Created by Tristan Aly on 18/06/2022.
//

import SwiftUI

struct CardPayment: View {
    var body: some View {
        VStack{
            HStack(spacing: 24){
                Image(systemName: "millsign.square.fill")
                    .font(.system(size: 40))
                    .foregroundColor(Color("DarkGreen"))
                VStack(alignment: .leading,spacing: 5){
                Text("Virement de 20 €")
                        .font(.title3)
                    Text("12h30")
                        .font(.subheadline)
                }
                Text("20 \(Image(systemName: "eurosign.circle.fill"))")
                    .font(.system(size: 30))
                    .foregroundColor(Color("DarkGreen"))
            }
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 8)
            .fill(.white)
            .shadow(color: Color("DarkGreen"), radius: 5, x: 2, y: 3))
       
    }
}

struct CardPayment_Previews: PreviewProvider {
    static var previews: some View {
        CardPayment()
    }
}
