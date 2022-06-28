//
//  ModaleAdresseView.swift
//  EcoMove
//
//  Created by Apprenant12 on 23/06/2022.
//

import SwiftUI

struct ModaleAdresseView: View {
    @Binding var adresse: String
    @Binding var adresseName: String
    @State var colorButton = [
        Bouton(colors: "DarkGreen", iconne: "house"),
        Bouton(colors: "DarkGreen", iconne: "case"),
        Bouton(colors: "DarkGreen", iconne: "heart")
    ]
    var body: some View {
        VStack{
            
            ZStack{
                ZStack(alignment: .bottom){
                    ZStack(alignment: .top){
                        RoundedRectangle(cornerRadius: 32)
                            .frame( height: 450)
                            .foregroundColor(Color("LightGreen"))
                        Rectangle()
                            .frame(width: 30, height: 10)
                            .foregroundColor(.white)
                    }
                    Rectangle()
                        .frame(height: 400,alignment: .bottom)
                        .foregroundColor(.white)
                }
                VStack{
                    
                    
                    
                    Text("Nouvelle adresse")
                        .frame(width: 200)
                        .padding()
                        .background(.white)
                        .cornerRadius(32)
                    
                    VStack(alignment: .leading){
                        HStack{
                            Text("Icones")
                                .foregroundColor(Color("LightGreen"))
                            ButtonView(colorButton: [Bouton(colors: "Grayperso", iconne: "house"), Bouton(colors: "Grayperso", iconne: "case")])
                            ButtonView(colorButton:[Bouton(colors: "Grayperso", iconne: "heart")])
                        }
                    }
                    Text("Nom")
                        .foregroundColor(Color("LightGreen"))
                    TextField("Nom", text: $adresse)
                        .frame(width: 300)
                        .border(Color("DarkGreen"))
                    Text("Adresse")
                        .foregroundColor(Color("LightGreen"))
                    TextField("Entrer une nouvelle adresse", text: $adresse)
                        .frame(width: 300)
                        .border(Color("DarkGreen"))
                    
                }
            }//V
            
        }
        
    }
}


struct ModaleAdresseView_Previews: PreviewProvider {
    static var previews: some View {
        ModaleAdresseView(adresse: .constant("blabla"), adresseName: .constant("blublu"))
    }
}
