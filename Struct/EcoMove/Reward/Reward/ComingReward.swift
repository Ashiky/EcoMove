//
//  ComingReward.swift
//  EcoMove
//
//  Created by Tristan Aly on 18/06/2022.
//

import SwiftUI

struct ComingReward: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Text("20 Juin 2022")
                .padding(.horizontal)
                .font(.title2)
            HStack{
                Spacer()
            CardPayment()
                Spacer()
            }
            Divider()
        }//: VStack
    }
}

struct ComingReward_Previews: PreviewProvider {
    static var previews: some View {
        ComingReward()
    }
}
