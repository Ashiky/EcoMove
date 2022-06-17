//
//  ButtonDon.swift
//  EcoMove
//
//  Created by Tristan Aly on 17/06/2022.
//

import SwiftUI

struct ButtonDon: View {
    var body: some View {
        VStack{
            Spacer()
            HStack{
                
            }
            Button{
//               Screen donation
            }label: {
                Text("Faire un Don")
                    .font(.system(size: 25))
                    .padding()
                    .foregroundColor(.white)

            }.frame(maxWidth: .infinity)
             .background(Color("LightGreen"))
             .cornerRadius(10)
             .padding()
        }//: VStack
    }
}

struct ButtonDon_Previews: PreviewProvider {
    static var previews: some View {
        ButtonDon()
    }
}
