//
//  HistoryView.swift
//  EcoMove
//
//  Created by Tristan Aly on 17/06/2022.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
        VStack{
            HistoryCard()
            Text("valeur total:  8000\(Image(systemName: "millsign.square.fill"))")
            Divider()
        ScrollView{
            VStack{
                ForEach(9...17, id: \.self) { index in
                    VStack(alignment: .leading, spacing: 10){
                        Text("\(index) Juin")
                            .padding(.horizontal)
                            .font(.title2)
                        HStack{
                            Spacer()
                        HistoryTravel()
                            Spacer()
                        }
                        Divider()
                    }//: VStack
                } //: ForEach
            }//: VStack
        }//: ScrollView
        } //: VStack
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
