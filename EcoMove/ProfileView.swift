//
//  ProileView.swift
//  EcoMove
//
//  Created by aprennant 18 on 17/06/2022.
//

import SwiftUI

struct ProileView: View {
    var body: some View {
        
        VStack{
            ZStack{
                
                Rectangle()
                    .fill(Color("LightGreen"))
                    .frame(width: 380.0, height: 220.0)
                
                HStack{
                    
                    Image("Chris")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 150, height: 150)
                        .clipShape(Circle())
                    VStack{
                        Text("Chris REDFIELD")
                            .padding()
                        Text("8000 W")
                        
                    }
                }
            }
            
            HStack{
                ZStack{
                    Rectangle()
                        .fill(Color("LightGreen"))
                        .frame(width: 140.0, height: 20.0)
                        .cornerRadius(8)
                    Text("PROFIL")
                        .font(.footnote)
                    
                        .padding(10)
                }
                ZStack{
                    Rectangle()
                        .fill(Color("LightGreen"))
                        .frame(width: 140, height: 20.0)
                        .cornerRadius(8)
                    Text("MA CONSO CO2")
                        .font(.footnote)
                    
                }
            }
            
            HStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color("LightGreen"))
                        .frame(width: 250.0, height: 20.0)
                    HStack{
                    Text("MES TRANSPORT FAVORIS")
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
                        Text("MES TRANSPORT FAVORIS")
                            .font(.footnote)
                    }
                }
                HStack{
                    TransportView(color: "LightGreen", image: "scooter")
                    TransportView(color: "Grayperso", image: "bicycle")
                    TransportView(color: "LightGreen", image: "tram.fill")
                    TransportView(color: "LightGreen", image: "tram.tunnel.fill")
                    TransportView(color: "Grayperso", image: "bus.fill")
                }
                HStack{
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color("LightGreen"))
                            .frame(width: 250.0, height: 20.0)
                        Text("MES TRANSPORT FAVORIS")
                            .font(.footnote)
                    }
                }
                
                HStack{
                    TransportView (color: "LightGreen", image: "figure.walk")
                    TransportView (color:"Grayperso", image: "bicycle")
                    TransportView (color: "Grayperso", image: "scooter")
                    }
                }
            }
        }
    }
    
    struct ProileView_Previews: PreviewProvider {
        static var previews: some View {
            ProileView()
        }
    }
    
    struct FavorisView: View {
        var favorisTransport : String
        var transportImage : String
        
        var body: some View {
            HStack{
                Image(systemName: transportImage)
                Text(favorisTransport)
            }
        }
    }
    
    struct TransportView: View {
        
        var color: String
        var image: String
        
        var body: some View {
            
            ZStack{
                Rectangle()
                    .fill(Color(color))
                    .frame(width: 30.0, height: 30.0)
                    .cornerRadius(8)
                Image(systemName:image)
                    .foregroundColor(.white)
            }
            //            //  ZStack{
            //                Rectangle()
            //                    .fill(Color(color))
            //                    .frame(width: 30.0, height: 30.0)
            //                    .cornerRadius(8)
            //                Image(systemName:image)
            //                    .foregroundColor(.white)
            //            }
            //            Image(systemName: "scooter")
            //            Image(systemName: "tram.fill")
            //            Image(systemName: "tram.tunnel.fill")
            //            //Image(systemName: "bus.fill")
        }
    }
//struct Specialbutton: View{

//override func
//    var buttonColor = ("")}
//if acive
//RoundedRectangle(cornerRadius: 8)
//    .fill(Color("Grayperso"))
//frame(width: 30.0, height: 30.0)
//

//else{
//RoundedRectangle(cornerRadius: 8)
//    .fill(Color("LightGrey"))
//frame(width: 30.0, height: 30.0)
//
//
//}
//
