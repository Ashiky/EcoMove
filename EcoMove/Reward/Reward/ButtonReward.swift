//
//  ButtonReward.swift
//  EcoMove
//
//  Created by Tristan Aly on 17/06/2022.
//

import SwiftUI

struct ButtonReward: View {
    var body: some View {
        VStack{
            Spacer()
            HStack{
                
            }
            Button{
//               Screen to validate
            }label: {
                Text("Obtenir récompense")
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


struct ButtonReward_Previews: PreviewProvider {
    static var previews: some View {
        ButtonReward()
            .previewInterfaceOrientation(.portrait)
    }
}
