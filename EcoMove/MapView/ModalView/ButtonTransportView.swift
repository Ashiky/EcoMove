//
//  ButtonTransportView.swift
//  EcoMove
//
//  Created by apprenant70 on 27/06/2022.
//

import SwiftUI

struct ButtonTransportView: View {
    var body: some View {
        VStack {
            ButtonView(colorButton: [
                Bouton(colors: "Grayperso", iconne: "figure.walk"),
                Bouton(colors: "Grayperso", iconne:"scooter"),
                Bouton(colors:"Grayperso", iconne:"bicycle"),
                Bouton(colors: "Grayperso", iconne:"tram.fill"),
                Bouton(colors: "Grayperso", iconne:"tram"),
                Bouton(colors: "Grayperso", iconne:"bus")
            ])
        }
    }
}

struct ButtonTransportView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonTransportView()
    }
}
