//
//  ModalWinPointView.swift
//  EcoMove
//
//  Created by apprenant70 on 17/06/2022.
//

import SwiftUI

struct ModalViewWinPoint: View {
    
    @State var hideModal: Bool = false
    @Environment(\.presentationMode) private var presentationMode
    
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color("LightGreen"))
                        .frame(width: 500, height: 130)
                    Text("Trajet Terminé !")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .font(.title)
                }
                Button {
                    ()
                } label: {
                    Text("10 \(Image(systemName: "millsign.circle.fill"))")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("DarkGreen"))
                        .font(.largeTitle)
                        .padding(.vertical, 20)
                    
                }
                
                
                HStack {
                    VStack {
                        Text("Vous avez économisé")
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color("DarkGreen"))
                            .font(.title)
                            .multilineTextAlignment(.center)
                        Text("138 g de Co2")
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color("DarkGreen"))
                            .font(.title)
                            .multilineTextAlignment(.center)
                        Text("par rapport à \(Image(systemName: "car"))")
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color("DarkGreen"))
                            .font(.title)
                            .multilineTextAlignment(.center)
                    }
                }
                Button {
                    presentationMode.wrappedValue.dismiss()
//                    hideModal = true
                } label: {
                    Text("Bien joué !")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("DarkGreen"))
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                        .padding()
                }
//                .fullScreenCover(isPresented: $presentedMap) {
//                    MapView()
//                }
                
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
        }
    }
}

struct ModalViewWinPoint_Previews: PreviewProvider {
    static var previews: some View {
        ModalViewWinPoint()
    }
}
