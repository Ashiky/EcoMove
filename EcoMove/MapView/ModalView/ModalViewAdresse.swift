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
           
            Button("Modes de transports alentours") {
                ModalViewTransport()
            }
            .frame(maxWidth: 500, maxHeight: 50, alignment: .center)
            .foregroundColor(Color("DarkGreen"))
            .background(.white)
            .cornerRadius(5)
            
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
