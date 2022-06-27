//
//  ModalViewAdresse.swift
//  EcoMove
//
//  Created by apprenant70 on 17/06/2022.
//

import SwiftUI

struct ModalViewAdresse: View {
    
    @State private var startPoint: String = ""
    @State private var endPoint: String = ""
    @State private var modalViewTransport: Bool = false
    
    
    var body: some View {
        VStack(alignment: .leading) {
        VStack {
            TextField("\(Image(systemName: "location")) Ma position",
                text: $startPoint
            )
            .disableAutocorrection(true)
            TextField(
                "Arrivé",
                text: $endPoint
            )
            .disableAutocorrection(true)
           
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 10.0)
                        .frame(maxWidth: 50,maxHeight: 50)
                        .foregroundColor(Color("DarkGreen"))
                    Text("Tous")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                    }
                ZStack {
                    RoundedRectangle(cornerRadius: 10.0)
                        .frame(maxWidth: 50,maxHeight: 50)
                        .foregroundColor(Color("DarkGreen"))
                Image(systemName: "bicycle")
                    .foregroundColor(.white)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 10.0)
                        .frame(maxWidth: 50,maxHeight: 50)
                        .foregroundColor(Color("DarkGreen"))
                Image(systemName: "scooter")
                    .foregroundColor(.white)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 10.0)
                        .frame(maxWidth: 50,maxHeight: 50)
                        .foregroundColor(Color("DarkGreen"))
                Image(systemName: "tram")
                    .foregroundColor(.white)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 10.0)
                        .frame(maxWidth: 50,maxHeight: 50)
                        .foregroundColor(Color("DarkGreen"))
                Image(systemName: "tram.fill.tunnel")
                    .foregroundColor(.white)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 10.0)
                        .frame(maxWidth: 50,maxHeight: 50)
                        .foregroundColor(Color("DarkGreen"))
                Image(systemName: "bus")
                    .foregroundColor(.white)
                }
            }
//            Button("Modes de transports alentours") {
//                modalViewTransport.toggle()
//                if modalViewTransport == true {
//                    ModalViewTransport()
//                }
//            }
//            .frame(maxWidth: 500, maxHeight: 50, alignment: .center)
//            .foregroundColor(Color("DarkGreen"))
//            .background(.white)
//            .cornerRadius(5)
            
        }
        .textFieldStyle(.roundedBorder)
        .padding()
        .background(Color("LightGreen"))
            
            List {
                Text("\(Image(systemName: "location")) Ma position")
                    .foregroundColor(Color("DarkGreen"))
                Section("Dernières recherches") {
                    HStack {
                        Image(systemName: "clock")
                            .foregroundColor(Color("DarkGreen"))
                        VStack(alignment: .leading) {
                            Text("1 Esp. J4")
                                .fontWeight(.bold)
                                .foregroundColor(Color("DarkGreen"))
                            Text("13002 Marseille")
                                .foregroundColor(.gray)
                        }
                        .padding()
                    }
                    HStack {
                        Image(systemName: "clock")
                            .foregroundColor(Color("DarkGreen"))
                        VStack(alignment: .leading) {
                            Text("9 Quai du Lazaret")
                                .fontWeight(.bold)
                                .foregroundColor(Color("DarkGreen"))
                            Text("13002 Marseille")
                                .foregroundColor(.gray)
                        }
                        .padding()
                    }
                }
                .font(.callout)
                Section("Favoris") {
                    HStack {
                        Image(systemName: "house")
                            .foregroundColor(Color("DarkGreen"))
                        Text("Maison")
                            .fontWeight(.bold)
                            .foregroundColor(Color("DarkGreen"))
                            .padding()
                    }
                    HStack {
                        Image(systemName: "briefcase")
                            .foregroundColor(Color("DarkGreen"))
                        Text("Travail")
                            .fontWeight(.bold)
                            .foregroundColor(Color("DarkGreen"))
                            .padding()
                    }
                    HStack {
                        Image(systemName: "heart")
                            .foregroundColor(Color("DarkGreen"))
                        Text("Sophie")
                            .fontWeight(.bold)
                            .foregroundColor(Color("DarkGreen"))
                            .padding()
                    }
                }
                .font(.callout)
            }
        }
    }
}


struct ModalViewAdresse_Previews: PreviewProvider {
    static var previews: some View {
        ModalViewAdresse()
    }
}

