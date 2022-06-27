//
//  ProgressDon.swift
//  EcoMove
//
//  Created by apprenant52 on 22/06/2022.
//

import SwiftUI


struct ProgressDon: View {

    var getInfoDon : GetInfoDon

    var body: some View {
        ZStack (alignment: .leading){
            RoundedRectangle(cornerRadius: 8)
                .fill(.gray.opacity(0.4))
                .frame(width: 300, height: 5)
        
            RoundedRectangle(cornerRadius: 8)
                .fill(Color("DarkGreen"))
                .frame(width: 100, height: 5)
                .overlay(alignment: .bottomTrailing, content: {
                    Text("\(getInfoDon.donne) \(Image(systemName: "millsign.square.fill"))")
                        .foregroundColor(.white)
                        .padding(5)
                        .background(Color("DarkGreen"))
                        .cornerRadius(8)
                        .offset(y:-10)
                })
        }
    }
}

struct ProgressDon_Previews: PreviewProvider {
    static var previews: some View {
        ProgressDon(getInfoDon: donations[0])
    }
}
