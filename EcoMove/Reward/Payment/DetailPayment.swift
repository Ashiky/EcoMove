//
//  DetailPayment.swift
//  EcoMove
//
//  Created by Tristan Aly on 17/06/2022.
//

import SwiftUI

struct DetailPayment: View {
    
    let payment : GetInfo
    
    var body: some View {
        ZStack{
            ScrollView{
                VStack(alignment: .leading, spacing: 10){
                    Image(payment.image)
                        .resizable()
                        .frame(maxWidth: .infinity, maxHeight: 300)
                    VStack(alignment: .leading, spacing: 5){
                    HStack{
                        Text(payment.name)
                            .font(.title)
                            .bold()
                        Spacer()
                        Image(payment.icone)
                            .resizable()
                            .frame(width: 55, height: 50, alignment: .trailing)
                            
                    }
                    Text(payment.subtitle)
                            .bold()
                            
                    Text("Prix : \(payment.price) \(Image(systemName: "millsign.square.fill"))")
                            .bold()
                            .foregroundColor(Color("DarkGreen"))
                }.padding()
                    Text(payment.descriptif)
                        .padding()
                
                }
            }.navigationBarTitleDisplayMode(.inline)
            ButtonPayment()
        } //: ZStack
    }
}

struct DetailPayment_Previews: PreviewProvider {
    static var previews: some View {
        DetailPayment(payment: payments[0])
    }
}
