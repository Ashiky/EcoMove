//
//  ScrollDon.swift
//  EcoMove
//
//  Created by apprenant52 on 21/06/2022.
//

import SwiftUI

struct ScrollDon: View {
    let donations: GetInfoDon
   
    @State private var valueDonCRouge = 0
    @State private var valueDonRCoeur = 0
    @State private var valueDonArbre = 0
  
    
    
    var body: some View {
       
        VStack{
            
        ZStack(alignment: .bottom){
           
            Image(donations.image)
                .resizable()
                .frame(maxWidth: 350, maxHeight: 250)
                .cornerRadius(8)
                .shadow(color: .black.opacity(0.2), radius: 2, x: 2, y: 1)
                .padding()
                .offset(y:-22)
               
            Rectangle()
                .fill(.white)
                .frame(width: 350, height: 160,alignment: .bottom)
                .cornerRadius(8)
                .shadow(color: .black.opacity(0.3), radius: 5, x: 4, y: 3)
                .overlay(
                    VStack{
                        Text(donations.name)
                            .font(.title2)
                            .bold()
                        Spacer()
                        
                        VStack{
                            Text(donations.subtitle)
                            Spacer()
                            
                            ProgressDon(getInfoDon:donations)
                            
                            
                            HStack{
                                VStack(alignment: .leading, spacing: 5){
                                    Text("Objectif")
                                  
                                       
                                    Text(" \(donations.objectif) \(Image(systemName:"millsign.square.fill"))")
                                        .bold()
                                        .foregroundColor(Color("DarkGreen"))
                                }
                                Spacer()
                                VStack(alignment: .trailing, spacing: 5){
                                    Text("Donateurs")
                                 
                                        
                                    Text("\(donations.donateur)")
                                        .bold()
                                        .foregroundColor(Color("DarkGreen"))
                                }
                            }
                        }
                        Spacer()
                    }.padding(.horizontal)
                       
                    )}//:VStack
                    //: ovarlay
    
    }//:ZStack
    
}
}

struct ScrollDon_Previews: PreviewProvider {
    static var previews: some View {
        ScrollDon( donations: donations[0])
    }
}
