//
//  RewardView.swift
//  EcoMove
//
//  Created by Tristan Aly on 17/06/2022.
//

import SwiftUI

struct RewardView: View {
    
    @State var choose = 0
    
    var body: some View {
    
        NavigationView {
        VStack{
            Spacer()
            TopCardView()
                .edgesIgnoringSafeArea(.top)
            Picker("test", selection: $choose, content: {
                Text("Dons").tag(0)
                Text("Virements").tag(1)
                Text("Bons d'achat").tag(2)
            }).pickerStyle(.segmented)
                .padding(.horizontal)
            
           
            if choose == 0 {
                ScrollView{
                    Spacer(minLength: 33)
                    VStack(spacing: 40) {
                        ForEach(donations, id: \.name){ dons in
                            NavigationLink{
                                DetailDon(donations: dons)//                            DetailView des dons
                            } label: {
                                ScrollDon(donations: dons)     //                            ScrollView des dons
                            }
                            
                        }
                    }
                }
            } else if choose == 2 {
                ScrollView{
                    VStack {
                        ForEach(purchase, id: \.name){ bons in
                            NavigationLink{
                                DetailBonAchat(bonpurchase: bons)
                            } label: {
                                ScrollBonAchat(bonpurchase: bons)
                            }
                        }
                    }
                }
                
            } else {
                ScrollView{
                    VStack {
                        ForEach(payments , id: \.name){ pay in
                            NavigationLink{
                                DetailPayment(payment: pay)
                            } label: {
                                ScrollPayment(payment: pay)
                            }
                        }
                    }
                }
            }
            
        }//:VStack
        .foregroundColor(.black)
        .navigationBarHidden(true)
    }
}
}
struct RewardView_Previews: PreviewProvider {
    static var previews: some View {
        RewardView()
    }
}

