//
//  DetailBonAchat.swift
//  EcoMove
//
//  Created by Tristan Aly on 17/06/2022.
//

import SwiftUI

struct DetailBonAchat: View {
    
    let bonpurchase: GetInfo
    
    var body: some View {
        ZStack{
            ScrollView{
                VStack(alignment: .leading, spacing: 10){
                    Image(bonpurchase.image)
                        .resizable()
                        .frame(width: 400, height: 310)
                    VStack(alignment: .leading, spacing: 5){
                    HStack{
                        Text(bonpurchase.name)
                            .font(.title)
                            .bold()
                        Spacer()
                        Image(bonpurchase.icone)
                            .resizable()
                            .frame(width: 115, height: 50, alignment: .trailing)
                            
                    }
                    Text(bonpurchase.subtitle)
                        Text("Prix: \(bonpurchase.price) \(Image(systemName: "millsign.square.fill"))")
                            .bold()
                            .foregroundColor(Color("DarkGreen"))
                            
                }.padding()
                    Text(bonpurchase.descriptif)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal)
                
                }
            }.navigationBarTitleDisplayMode(.inline)
            ButtonReward()
        } //: ZStack
    }
}

struct DetailBonAchat_Previews: PreviewProvider {
    static var previews: some View {
        DetailBonAchat(bonpurchase: purchase[1])
    }
}
