//
//  TransportButum.swift
//  EcoMove
//
//  Created by aprennant 18 on 24/06/2022.
//

import SwiftUI

struct TransportButum: View {
    @State var transports = [
        Transport(image:"figure.walk", color: "LightGreen"),
        Transport(image:"scooter", color: "Grayperso"),
        Transport(image:"bicycle", color:"Grayperso"),
        Transport(image:"tram.fill", color: "LightGreen"),
        Transport(image:"tram", color: "LightGreen"),
        Transport(image:"bus", color: "Grayperso")
        
    ]
    var body: some View {
        HStack{
            ForEach(0..<transports.count){ index in
                Button{
                    if transports[index].color == "Grayperso"{
                        transports[index].color = "LightGreen"
                    }else{
                        transports[index].color = "Grayperso"
                    }
                }label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .foregroundColor(Color(transports[index].color ))
                            .frame(width: 50.0, height: 50.0)
                        Image(systemName: transports[index].image)
                            .foregroundColor(.white)
                            .frame(width: 40, height: 40)
                    }
                }
            }
            Spacer()
        }
    }
}
struct TransportButum_Previews: PreviewProvider {
    static var previews: some View {
        TransportButum()
    }
}
