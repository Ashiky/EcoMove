//
//  DetailDon.swift
//  EcoMove
//
//  Created by apprenant52 on 22/06/2022.
//

import SwiftUI

struct DetailDon: View {
    
    @State var isHeight : CGFloat = 135
    @State var showText : Bool = false
    
    let donations: GetInfoDon
    
    var body: some View {
        VStack{
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
                        .multilineTextAlignment(.leading)
                        .frame(height: 50)
                    Spacer()
                    
                }
                VStack{
                    Spacer(minLength: 20)
                    ProgressDon(getInfoDon:donations)
                }
                
                HStack{
                    VStack(alignment: .leading, spacing: 5){
                        Text("Donné")
                        
                        
                        Text(" \(donations.donne) \(Image(systemName:"millsign.square.fill"))")
                            .bold()
                            .foregroundColor(Color("DarkGreen"))
                    }
                    Spacer()
                    VStack(alignment: .trailing, spacing: 5){
                        Text("Objectif")
                        
                        
                        Text("\(donations.objectif) \(Image(systemName:"millsign.square.fill"))")
                            .bold()
                            .foregroundColor(Color("DarkGreen"))
                    }
                }
                
                
            }.padding()
     //       ScrollView{
                VStack {
                    Text(donations.descriptif)
                        .multilineTextAlignment(.leading)
                        .frame(height: isHeight)
                    HStack {
                        Spacer()
                        Button(action : {
                            showText.toggle()
                            //   showText = true
                            if showText == true {
                                isHeight = 400
                                
                            }else{
                                isHeight = 135
                            }
                        }, label: {
                            withAnimation {
                                Text(showText == false ? "Lire la suite" : "moins d'infos")
                            }.foregroundColor(Color("LightGreen"))
                             
                        }).padding(.horizontal)
                    }
                    
                }.padding()
         
                VStack (alignment: .leading) {
                Text("Derniers dons")
                        .font(.title3)
                    .foregroundColor(Color("DarkGreen"))
                    .bold()
                    .padding(.vertical)
                CardDonator()
                } //VStack
            }.navigationBarTitleDisplayMode(.inline)
            ButtonDon()
        } //: VStack
    }
}

struct DetailDon_Previews: PreviewProvider {
    static var previews: some View {
        DetailDon(donations: donations[1])
    }
}
