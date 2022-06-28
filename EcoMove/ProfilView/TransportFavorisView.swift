//
//  TransportFavorisView.swift
//  EcoMove
//
//  Created by aprennant 18 on 24/06/2022.
//

import SwiftUI

struct TransportFavorisView: View {
    var body: some View {
        VStack{
            
            HStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color("LightGreen"))
                        .frame(width: 250.0, height: 20.0)
                    HStack{
                        Text("MES TRANSPORTS FAVORIS")
                            .font(.footnote)
                        Image(systemName: "plus.circle")
                    }
                }
            }
            FavorisView(favorisTransport: "Maison", transportImage: "house")
            FavorisView(favorisTransport: "Travail", transportImage: "briefcase")
            FavorisView(favorisTransport: "Sophie", transportImage: "heart")
            Group{
                HStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color("LightGreen"))
                            .frame(width: 250.0, height: 20.0)
                        Text("MES TRANSPORTS FAVORIS")
                            .font(.footnote)
                    }
                }
                TransportButum()
                HStack{
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color("LightGreen"))
                            .frame(width: 250.0, height: 20.0)
                        Text("MES TRANSPORTS PERSONNELS")
                            .font(.footnote)
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
