//
//  ModalViewTrajet.swift
//  EcoMove
//
//  Created by apprenant70 on 17/06/2022.
//

import SwiftUI

struct ModalViewTrajet: View {
    var body: some View {
                    VStack(alignment: .leading) {
                ZStack {
                    VStack(alignment: .leading) {
                        HStack {
                            Image(systemName: "location.fill")
                                .foregroundColor(Color("DarkGreen"))
                            Text("Ma position")
                            Spacer()
                        } //Hstack
                        .padding(7)
                        .background(RoundedRectangle(cornerRadius: 5).fill(.white).frame(width: 340, height: 40))
                        
                        HStack {
                            Image(systemName: "flag.fill")
                                .foregroundColor(Color("DarkGreen"))
                            
                            Text("14 boulevard Longchamp, 13001 Marseille")
                                .lineLimit(1)
                            Spacer()
                        } //Hstack
                        .padding(7)
                        .background(RoundedRectangle(cornerRadius: 5).fill(.white).frame(width: 340, height: 40, alignment: .leading))
                    } //Vstack
                    .padding(10)
                    .padding()
                    .background(Rectangle().fill(Color("LightGreen")).frame(height: 300))
                    
                    CircleButton()
                        .offset(x: 170)
                } //Zstack
                
                List {
                    Section("Trajet") {
                        HStack { // Marche
                            NavigationLink(destination: TrajetOnMap(), label: {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 25)
                                        .frame(maxWidth: 35,maxHeight: 35)
                                        .foregroundColor(Color("DarkGreen"))
                                    Image(systemName: "figure.walk")
                                        .foregroundColor(.white)
                                }
                                VStack(alignment: .leading) {
                                    HStack {
                                        
                                        Text("18 min")
                                            .fontWeight(.bold)
                                            .font(.title3)
                                            .foregroundColor(Color("DarkGreen"))
                                            .lineLimit(1)
                                    }
                                    Text("1,4 km")
                                        .font(.title3)
                                        .foregroundColor(.gray)
                                        .lineLimit(1)
                                }
                                .padding()
                                Spacer()
                                    .frame(width: 55, height: 10)
                                Text("10 \(Image(systemName: "millsign.circle.fill"))")
                                    .fontWeight(.bold)
                                    .font(.title2)
                                    .foregroundColor(Color("DarkGreen"))
                                    .lineLimit(1)
                                    .padding()
                            })
                        }
                        HStack { // Tram
                            NavigationLink(destination: TrajetOnMap(), label: {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 25)
                                        .frame(maxWidth: 35,maxHeight: 35)
                                        .foregroundColor(Color("DarkGreen"))
                                    Image(systemName: "tram")
                                        .foregroundColor(.white)
                                }
                                VStack(alignment: .leading) {
                                    HStack {
                                        Text("13 min")
                                            .fontWeight(.bold)
                                            .font(.title3)
                                            .foregroundColor(Color("DarkGreen"))
                                            .lineLimit(1)
                                    }
                                    Text("1,4 km")
                                        .font(.title3)
                                        .foregroundColor(.gray)
                                        .lineLimit(1)
                                }
                                .padding()
                                Spacer()
                                    .frame(width: 70, height: 10)
                                Text("6 \(Image(systemName: "millsign.circle.fill"))")
                                    .fontWeight(.bold)
                                    .font(.title2)
                                    .foregroundColor(Color("DarkGreen"))
                                    .lineLimit(1)
                                    .padding()
                            })
                        }
                        HStack { // Métro
                            NavigationLink(destination: TrajetOnMap(), label: {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 25)
                                        .frame(maxWidth: 35,maxHeight: 35)
                                        .foregroundColor(Color("DarkGreen"))
                                    Image(systemName: "tram.tunnel.fill")
                                        .foregroundColor(.white)
                                }
                                VStack(alignment: .leading) {
                                    HStack {
                                        Text("9 min")
                                            .fontWeight(.bold)
                                            .font(.title3)
                                            .foregroundColor(Color("DarkGreen"))
                                            .lineLimit(1)
                                    }
                                    Text("1,4 km")
                                        .font(.title3)
                                        .foregroundColor(.gray)
                                        .lineLimit(1)
                                }
                                .padding()
                                Spacer()
                                    .frame(width: 70, height: 10)
                                Text("6 \(Image(systemName: "millsign.circle.fill"))")
                                    .fontWeight(.bold)
                                    .font(.title2)
                                    .foregroundColor(Color("DarkGreen"))
                                    .lineLimit(1)
                                    .padding()
                            })
                        }
                    }
                    .font(.callout)
                }
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(true)
            } //Vstack
        }
    }


struct ModalViewTrajet_Previews: PreviewProvider {
    static var previews: some View {
        ModalViewTrajet()
    }
}
