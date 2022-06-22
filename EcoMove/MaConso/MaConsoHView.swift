//
//  MaConsoHView.swift
//  EcoMove
//
//  Created by Apprenant12 on 20/06/2022.
//

import SwiftUI
struct MaConsoHView: View {
    @State var hideVLigne: Bool = false
    @State var hideRLigne: Bool = false
    var graduations = [500,400,300,200,100,0]
    var jours = ["Lun","Mar","Mer","Jeu","Ven","Sam","Dim"]
    var body: some View {
        VStack{
            HStack{
                VStack(spacing: 27){
                    ForEach(graduations, id: \.self) { graduation in
                        Text("\(graduation)")
                            .font(.custom( "graduation", size: 10))
                    }
                }
                ZStack{
                    if hideRLigne == false{
                    GraphiquePHView()
                    }
                    if hideVLigne == false{
                    GraphiqueEHView()
                    }
                    }
                .frame(width: 346, height: 200)
                .border(.black)
               
            }
            HStack(spacing: 40){
                ForEach(jours, id: \.self) { jour in
                    
                    
                        Text(jour)
                            .font(.system(size: 9))
                    
                }
            }

            Button {
                if hideVLigne == false {
                    hideVLigne = true
                }
                else {
                    hideVLigne = false
                }
            } label: {
                HStack{
                    Text("CO2 Economisé")
                        .foregroundColor(.black)
                        .frame(width: 125, height: 20, alignment: .leading)
                    RoundedRectangle(cornerRadius: 16)
                        .frame(width: 20, height: 10)
                        .foregroundColor(Color("LightGreen"))
                    Spacer()
                }//H
            }
            
            Button {
                if hideRLigne == false {
                    hideRLigne = true
                }
                else {
                    hideRLigne = false
                }
                    
            } label: {
                HStack{
                    Text("CO2 Produit")
                        .frame(width: 126, height: 20, alignment: .leading)
                        .foregroundColor(.black)
                    RoundedRectangle(cornerRadius: 16)
                        .frame(width: 20, height: 10)
                        .foregroundColor(Color("Rouge"))
                    Spacer()
            }
            
                
            }
        }
        .frame(height: 300)
    }
}

struct MaConsoHView_Previews: PreviewProvider {
    static var previews: some View {
        MaConsoHView()
    }
}


