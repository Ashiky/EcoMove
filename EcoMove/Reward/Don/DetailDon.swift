//
//  DetailDon.swift
//  EcoMove
//
//  Created by apprenant52 on 22/06/2022.
//

import SwiftUI

struct DetailDon: View {

    let donations: GetInfoDon
    
    var body: some View {
        ZStack{
            ScrollView{
                VStack(spacing: 10){
                    Image(donations.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame (maxWidth: 300, maxHeight: 300)
                    VStack(alignment: .leading, spacing: 5){
                    HStack{
                        Text(donations.name)
                            .font(.title)
                            .bold()
                        Spacer()
              
                            
                    }
                    Text(donations.subtitle)
                        Text("Donateurs : \(donations.donateur) ")
                            .bold()
                            .foregroundColor(Color("DarkGreen"))
                            
                }.padding()
                    Text(donations.descriptif)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal)
                
                }
            }.navigationBarTitleDisplayMode(.inline)
            ButtonDon()
        } //: ZStack
    }
}

struct DetailDon_Previews: PreviewProvider {
    static var previews: some View {
        DetailDon(donations: donations[2])
    }
}
