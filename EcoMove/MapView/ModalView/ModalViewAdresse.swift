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
                ZStack {
                    VStack {
                        HStack {
                            Image(systemName: "location.fill")
                                .foregroundColor(Color("DarkGreen"))
                            TextField("Ma position",
                                      text: $startPoint
                            )
                            //            .disableAutocorrection(true)
                        }
                        .padding(.horizontal, 10)
                        .background(RoundedRectangle(cornerRadius: 5).fill(.white))
                        
                        HStack {
                            Image(systemName: "flag.fill")
                                .foregroundColor(Color("DarkGreen"))
                            
                            TextField(
                                "Arrivée",
                                text: $endPoint
                            )
                            //            .disableAutocorrection(true)
                        }
                        .padding(.horizontal, 10)
                        .background(RoundedRectangle(cornerRadius: 5).fill(.white))
                    }
                    .textFieldStyle(.roundedBorder)
                    .padding()
                    .background(Rectangle().fill(Color("LightGreen")).frame(height: 300))
                    CircleButton()
                        .offset(x: 170)
                }
                
                List {
                    Text("\(Image(systemName: "location.fill")) Ma position")
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
                            NavigationLink(destination: ModalViewTrajet(), label: {
                                
                                Image(systemName: "house")
                                    .foregroundColor(Color("DarkGreen"))
                                Text("Maison")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("DarkGreen"))
                                    .padding()
                            })
                        }
                        HStack {
                            NavigationLink(destination: ModalViewTrajet(), label: {
                                
                                Image(systemName: "briefcase")
                                    .foregroundColor(Color("DarkGreen"))
                                Text("Travail")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("DarkGreen"))
                                    .padding()
                            })
                        }
                        HStack {
                            NavigationLink(destination: ModalViewTrajet(), label: {
                                Image(systemName: "heart")
                                    .foregroundColor(Color("DarkGreen"))
                                Text("Sophie")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("DarkGreen"))
                                    .padding()
                            })
                        }
                    }
                    .font(.callout)
                }
                .navigationBarTitleDisplayMode(.inline)
            
            }
        }
    }



struct ModalViewAdresse_Previews: PreviewProvider {
    static var previews: some View {
        ModalViewAdresse()
    }
}

