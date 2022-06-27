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
    var body: some View{
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
            TransportFavorisView()
        }
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
