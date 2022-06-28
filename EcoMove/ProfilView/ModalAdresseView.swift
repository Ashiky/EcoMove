//
//  ModalAdresseView.swift
//  EcoMove
//
//  Created by Apprenant12 on 28/06/2022.
//

import SwiftUI

 struct ModaleAdresseView: View {
     @State var adresse: String = ""
     @State var adresseName: String = ""
     @State var cp: String = ""
     @State var ville: String = ""
     @State var colorButton = [
         Bouton(colors: "Grayperso", iconne: "house"),
         Bouton(colors: "Grayperso", iconne: "case"),
         Bouton(colors: "Grayperso", iconne: "heart")
     ]
     var body: some View {
         VStack{
             ZStack{
                 ZStack(alignment: .bottom){
                     ZStack(alignment: .top){
                         RoundedRectangle(cornerRadius: 32)
                             .frame( height: 475)
                             .foregroundColor(Color("LightGreen"))
                         Text("Nouvelle adresse")
                             .frame(width: 300)
                             .padding(40)
                             .foregroundColor(.white)
                             .font(.title)
                     }
                     Rectangle()
                         .frame(height: 400,alignment: .bottom)
                         .foregroundColor(.white)
                 }
                 VStack(spacing: 20){
                     VStack(spacing: 10){
                         VStack(alignment: .leading){
                             HStack(spacing: 10){

                                 Text("Icones")
                                     .font(.system(size: 23))
                                     .foregroundColor(Color("LightGreen"))
                                 ButtonView(colorButton: [Bouton(colors: "Grayperso", iconne: "house"), Bouton(colors: "Grayperso", iconne: "case")])
                                 ButtonView(colorButton:[Bouton(colors: "Grayperso", iconne: "heart")])
                             }
                             .frame(width: 367,alignment: .leading)

                             HStack{
                                 Text("Nom")
                                     .font(.system(size: 21))
                                     .frame(height: 30)
                                     .foregroundColor(Color("LightGreen"))
                                 Spacer()
                                 TextField("Nom", text: $adresseName)
                                     .frame(width: 275,height: 30)
                                     .border(Color("DarkGreen"))
                                     .textFieldStyle(.roundedBorder)
                             }
                             HStack{
                                 Text("Adresse")

                                     .font(.system(size: 21))
                                     .foregroundColor(Color("LightGreen"))
                                 Spacer()
                                 TextField("Adresse", text: $adresse)
                                     .frame(width: 275,height: 30)
                                     .border(Color("DarkGreen"))
                                     .textFieldStyle(.roundedBorder)
                             }

                             HStack{
                                 Text("CP")
                                     .font(.system(size: 21))
                                     .frame(height: 30)
                                     .foregroundColor(Color("LightGreen"))
                                 Spacer()
                                 TextField("Code postal", text: $cp)
                                     .frame(width: 275,height: 30)
                                     .border(Color("DarkGreen"))
                                     .textFieldStyle(.roundedBorder)
                             }
                             HStack{
                                 Text("Ville")
                                     .font(.system(size: 21))
                                     .frame(height: 30)
                                     .foregroundColor(Color("LightGreen"))
                                 Spacer()
                                 TextField("Ville", text: $ville)
                                     .frame(width: 275,height: 30)
                                     .border(Color("DarkGreen"))
                                     .textFieldStyle(.roundedBorder)
                             }
                         }
                         .padding()
                     }
                     Button{

                     }label: {
                         Text("Valider")
                             .font(.largeTitle)
                             .foregroundColor(.white)
                             .padding(7)
                             .frame(width:350)
                             .background(RoundedRectangle(cornerRadius: 8)
                                 .fill(Color("LightGreen")
                                      ))

                     }
                 }
             }
             //.frame(height: 350,alignment: .bottom)
         }

     }

 }


 struct ModaleAdresseView_Previews: PreviewProvider {
     static var previews: some View {
         ModaleAdresseView()
     }
 }
