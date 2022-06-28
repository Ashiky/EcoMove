//
//  MaConsoMView.swift
//  EcoMove
//
//  Created by Apprenant12 on 22/06/2022.
//

import SwiftUI

struct MaConsoMView: View {
        @State var hideVLigne: Bool = false
        @State var hideRLigne: Bool = false
        var graduations = [500,400,300,200,100,0]
        var jours = ["Semaine 1", "Semaine 2", "Semaine 3", "Semaine 4"]
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
                        GraphiquePMView()
                        }
                        if hideVLigne == false{
                        GraphiqueEMView()
                        }
                        }
                    .frame(width: 346, height: 200)
                    .border(.black)
                   
                }
                HStack(spacing: 60){
                    
                    ForEach(jours, id: \.self) { jour in
                        
                        
                            Text(jour)
                                .font(.system(size: 9))
                        
                    }
                }
                HStack{
                    HStack{
                Button {
                    if hideVLigne == false {
                        hideVLigne = true
                    }
                    else {
                        hideVLigne = false
                    }
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 180.0, height: 40.0)
                            .cornerRadius(8)
                            .foregroundColor(hideVLigne == false ?Color("LightGreen"): Color("Grayperso"))
                        Text("CO2 Economisé")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(height: 20, alignment: .leading)
                    }
                }
                    }
                    HStack{
                Button {
                    if hideRLigne == false {
                        hideRLigne = true
                    }
                    else {
                        hideRLigne = false
                    }
                        
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 180.0, height: 40.0)
                            .cornerRadius(8)
                            .foregroundColor(hideRLigne == false ?Color("Rouge"): Color("Grayperso"))
                        Text("CO2 Produit")
                            .fontWeight(.bold)
                            .frame(height: 20)
                            .foregroundColor(.white)
                    }
                }
                    }
                }
            }
        }
    }
struct MaConsoMView_Previews: PreviewProvider {
    static var previews: some View {
        MaConsoMView()
    }
}
