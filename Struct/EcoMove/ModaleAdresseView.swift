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
            RoundedRectangle(cornerRadius: 32)
                .frame(width: 400, height: 475)
                .foregroundColor(Color("LightGreen"))
            VStack{
                Rectangle()
                    .frame(width: 30, height: 10)
                    .foregroundColor(.white)
                
                Text("Nouvelle adresse")
                    .frame(width: 200, height: -20)
                    .padding()
                    .background(.white)
                    .cornerRadius(32)
                ZStack{
                    Rectangle()
                        .frame(width: 380, height: 400,alignment: .bottom)
                        .foregroundColor(.white)
                    VStack(alignment: .leading){
                        HStack{
                            Text("Icones")
                                .foregroundColor(Color("LightGreen"))
                            ForEach(0..<colorButton.count, id: \.self){ index in
                                Button{
                                    if colorButton[index].colors == "gray" {
                                        colorButton[index].colors = "LightGreen"
                                    }
                                    else {
                                        colorButton[index].colors = "gray"
                                    }
                                }label: {
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 16)
                                            .frame(width: 50, height: 50)
                                            .foregroundColor(Color(colorButton[index].colors))
                                        Image(systemName: colorButton[index].iconne)
                                            .foregroundColor(.white)
                                    }//Z
                                    }
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
                    }//V
                }//Z
            }//V
          
                        }
            
            }
        }
    }

struct ModaleAdresseView_Previews: PreviewProvider {
    static var previews: some View {
        ModaleAdresseView(adresse: .constant("blabla"), adresseName: .constant("blublu"))
    }
}
