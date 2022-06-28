//
//  ProileView.swift
//  EcoMove
//
//  Created by aprennant 18 on 17/06/2022.
//

import SwiftUI
import Foundation
//imoport de StrucuPoint

struct ProfileView: View {
    @State var vue: Bool = false
    var body: some View{
        VStack{
            
            ZStack{
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color("LightGreen"))
                    .frame(width: 350, height: 200, alignment: .center)
                    .rotationEffect(.degrees(2))
                    .shadow(color: Color("DarkGreen"), radius: 2, x: 4, y: 3)
                    .padding()
                HStack{
                    Image("Chris")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 150, height: 150)
                        .clipShape(Circle())
                    
                    VStack{
                        Text("Chris REDFIELD")

                            .font(.title2)
                            .foregroundColor(Color("DarkGreen"))
                        
                            .fontWeight(.bold)
                            .padding()
                        Text("8000 W")
                            .font(.title2)
                            .foregroundColor(Color("DarkGreen"))

                    }
                }
                .frame(width:300)
            }
            HStack{
                Button{
                    if vue == true{
                        vue = false
                    }
                }label: {
                ZStack{
                    Rectangle()
                        .fill(Color("LightGreen"))
                        .frame(width: 140.0, height: 20.0)
                        .cornerRadius(8)
                    Text("PROFIL")
                        .foregroundColor(.white)
                        .font(.footnote)
                    .padding(10)}
                }
                Button{
                    if vue == false{
                        vue = true
                    }
                }label:{
                ZStack{
                    Rectangle()
                        .fill(Color("LightGreen"))
                        .frame(width: 140, height: 20.0)
                        .cornerRadius(8)
                    Text("MA CONSO CO2")
                    .font(.footnote)}
                .foregroundColor(.white)
                }
            }
            
            if vue == false{
            TransportFavorisView()
                    .frame(height: 325)
            }
            else {
                MaconsoView(consoJV: 0.3)
                    .frame(height: 325)
            }
        }
        
    }
}
    

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
