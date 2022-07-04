//
//  TransportFavorisView.swift
//  EcoMove
//
//  Created by aprennant 18 on 24/06/2022.
//

import SwiftUI

struct TransportFavorisView: View {
    @State var showSheet: Bool = false
    var body: some View {

        ScrollView{
            VStack(spacing: 20) {
                            

                HStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color("LightGreen"))
                            .frame(width: 370.0, height: 40.0)
                        HStack{
                            Text("MES ADRESSES FAVORITES")
                                .foregroundColor(.white)
                                .font(.headline)
                            
                            Spacer()
                            Button {
                                showSheet.toggle()
                            }label: {
                                Image(systemName: "plus.circle")
                                    .foregroundColor(.white)
                            }.sheet(isPresented: $showSheet) {
                                HalfSheet{
                                    ModaleAdresseView()
                                }
                            }
                        }
                        .padding()
                    }
                }
                VStack(alignment: .leading, spacing: 15){
                    FavorisView(favorisTransport: "Maison", transportImage: "house.fill")
                        .font(.title3)
                        .foregroundColor(Color("DarkGreen"))
                    Divider()
                    FavorisView(favorisTransport: "Travail", transportImage: "briefcase.fill")
                        .font(.title3)
                        .foregroundColor(Color("DarkGreen"))
                    Divider()
                    FavorisView(favorisTransport: "Sophie", transportImage: "heart.fill")
                        .font(.title3)
                        .foregroundColor(Color("DarkGreen"))
                }
                .padding()
                
                Group{
                    HStack{
                        ZStack{
                            RoundedRectangle(cornerRadius: 8)
                                .fill(Color("LightGreen"))
                                .frame(width: 370.0, height: 40.0)
                            HStack{
                                Text("MES TRANSPORTS FAVORIS")
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .font(.headline)
                                Spacer()
                            }
                            .padding(.horizontal)
                        }
                    }
                    TransportButum()
                        .padding(.horizontal)
                    HStack{
                        ZStack{
                            RoundedRectangle(cornerRadius: 8)
                                .fill(Color("LightGreen"))
                                .frame(width: 370.0, height: 40.0)
                            HStack{
                                Text("MES TRANSPORTS PERSONNELS")
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .font(.headline)
                                Spacer()
                            }
                            .padding(.horizontal)
                        }
                    }
                    TransportPersoButum()
                        .padding(.horizontal)

                }
            }
        }
    }
}



struct TransportFavorisView_Previews: PreviewProvider {
    static var previews: some View {
        TransportFavorisView()
    }
}
