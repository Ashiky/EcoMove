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
    var graduations = [1000,800,600,400,200,0]
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
                            Text("CO2 économisé")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(height: 20, alignment: .leading)
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
                                Text("CO2 produit")
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
    
}


struct MaConsoHView_Previews: PreviewProvider {
    static var previews: some View {
        MaConsoHView()
    }
}


