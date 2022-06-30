//
//  SwiftUIView.swift
//  EcoMove
//
//  Created by aprennant 18 on 24/06/2022.
//

import SwiftUI

struct TransportPersoButum: View {
    @State var transportsperso = [
        Transport(image:"figure.walk", color: "LightGreen"),
    Transport(image:"scooter", color: "Grayperso"),
    Transport(image:"bicycle", color:"Grayperso")
    
]
    var body: some View {
        HStack{
        ForEach(0..<transportsperso.count){ index in
            Button{
                if transportsperso[index].color == "Grayperso"{
                    transportsperso[index].color = "LightGreen"
                }else{
                    transportsperso[index].color = "Grayperso"
                }
            }label: {
                ZStack{
                RoundedRectangle(cornerRadius: 8)
                    .foregroundColor(Color(transportsperso[index].color ))
                    .frame(width: 50.0, height: 50.0)
                Image(systemName: transportsperso[index].image)
                        .foregroundColor(.white)
                    .frame(width: 40, height: 40)
            }
            }
 }
            Spacer()
}
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TransportPersoButum ()
    }
}
