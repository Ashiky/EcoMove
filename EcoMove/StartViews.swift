//
//  StartViews.swift
//  EcoMove
//
//  Created by Tristan Aly on 17/06/2022.
//

import SwiftUI

struct StartViews: View {
    var body: some View {
        VStack{
            Text("ECOMOVE")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color("DarkGreen"))
                .padding()
            Spacer()
            
            Image("ecomove")
                .resizable()
                .frame(width: 250, height: 280, alignment: .center)
            
            Spacer()
            
            NavigationLink {
//                Vue de Suzanne Transport
            } label: {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.blue)
                    .frame(width: 180, height: 60)
                    .overlay(Text("Get started")
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding())
                    
            }
        } //: VStack
    }
}

struct StartViews_Previews: PreviewProvider {
    static var previews: some View {
        StartViews()
    }
}
