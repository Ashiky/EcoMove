//
//  GiveDon.swift
//  TransportApp
//
//  Created by Tristan Aly on 24/06/2022.
//

import SwiftUI

struct GiveDon: View {
    
    @State var money = ""
    
    var body: some View {
        VStack(spacing: 50){
        VStack(alignment: .leading,spacing: 10){
            Spacer()
            Text("Choisir le montant")
                .font(.title)
                .padding()
            
            Text("Vous pouvez donnez entre 10 et 1000 par donation. il est possible de faire plusieurs donations.")
                .font(.footnote)
                .bold()
                .frame(width: 350, height: 50)
                .padding()
            TextField("Entrer le montant", text: $money )
                .padding()
                .background(RoundedRectangle(cornerRadius: 8).stroke()
                    .frame(width: 370, height: 50))
        } //VStack
           
            
            Button(action: {
                
            }, label: {
                Text("Valider")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(7)
                
            }).frame(maxWidth: .infinity)
                .background(RoundedRectangle(cornerRadius: 8)
                    .fill(Color("LightGreen")
                         ))
                .padding()
        Spacer()
        } //VStack
    }
}

struct GiveDon_Previews: PreviewProvider {
    static var previews: some View {
        GiveDon()
    }
}
