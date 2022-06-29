//
//  ModalViewTransport.swift
//  EcoMove
//
//  Created by apprenant70 on 20/06/2022.
//

import SwiftUI

struct ModalViewTransport: View {
    var body: some View {
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .frame(maxWidth: 50,maxHeight: 50)
                    .foregroundColor(Color("DarkGreen"))
            Image(systemName: "figure.walk")
                .foregroundColor(.white)
            }

            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .frame(maxWidth: 50,maxHeight: 50)
                    .foregroundColor(Color("DarkGreen"))
            Image(systemName: "tram")
                .foregroundColor(.white)
            }
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .frame(maxWidth: 50,maxHeight: 50)
                    .foregroundColor(Color("DarkGreen"))
            Image(systemName: "tram.fill.tunnel")
                .foregroundColor(.white)
            }
//            ZStack {
//                RoundedRectangle(cornerRadius: 10.0)
//                    .frame(maxWidth: 50,maxHeight: 50)
//                    .foregroundColor(Color("DarkGreen"))
//            Image(systemName: "bus")
//                .foregroundColor(.white)
//            }
        }
    }
}

struct ModalViewTransport_Previews: PreviewProvider {
    static var previews: some View {
        ModalViewTransport()
    }
}

//            ZStack {
//                RoundedRectangle(cornerRadius: 10.0)
//                    .frame(maxWidth: 50,maxHeight: 50)
//                    .foregroundColor(Color("DarkGreen"))
//                Text("Tous")
//                    .foregroundColor(.white)
//                    .fontWeight(.bold)
//                }
//            ZStack {
//                RoundedRectangle(cornerRadius: 10.0)
//                    .frame(maxWidth: 50,maxHeight: 50)
//                    .foregroundColor(Color("DarkGreen"))
//            Image(systemName: "bicycle")
//                .foregroundColor(.white)
//            }
//            ZStack {
//                RoundedRectangle(cornerRadius: 10.0)
//                    .frame(maxWidth: 50,maxHeight: 50)
//                    .foregroundColor(Color("DarkGreen"))
//            Image(systemName: "scooter")
//                .foregroundColor(.white)
//            }
