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
                //            HStack{
                //                ZStack{
                //                    Rectangle()
                //                        .fill(Color("LightGreen"))
                //                        .frame(width: 180.0, height: 40.0)
                //                        .cornerRadius(8)
                //                    Text("PROFIL")
                //                        .font(.system(size:18,weight: .bold))
                //                        .foregroundColor(.white)
                //                        .padding(10)
                //                }
                //                ZStack{
                //                    Rectangle()
                //                        .fill(Color("LightGreen"))
                //                        .frame(width: 180, height: 40.0)
                //                        .cornerRadius(8)
                //                    Text("MA CONSO CO2")
                //                        .foregroundColor(.white)
                //                        .font(.system(size:18,weight: .bold))
                //                }
                //            }
                HStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color("LightGreen"))
                            .frame(width: 370.0, height: 40.0)
                        HStack{
                            Text("MES TRANSPORTS FAVORIS")
                                .foregroundColor(.white)
                                .font(.headline)
                            
                            Spacer()
                            Image(systemName: "plus.circle")
                                .foregroundColor(.white)
                        }
                        .padding()
                    }
                }
                VStack(alignment: .leading, spacing: 20){
                    FavorisView(favorisTransport: "Maison", transportImage: "house")
                        .foregroundColor(Color("DarkGreen"))
                    Divider()
                    FavorisView(favorisTransport: "Travail", transportImage: "briefcase")
                        .foregroundColor(Color("DarkGreen"))
                    Divider()
                    FavorisView(favorisTransport: "Sophie", transportImage: "heart")
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
            TransportPersoButum()
        }
    }
}
}


struct TransportFavorisView_Previews: PreviewProvider {
    static var previews: some View {
        TransportFavorisView()
    }
}
