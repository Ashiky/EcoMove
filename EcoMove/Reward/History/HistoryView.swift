//
//  HistoryView.swift
//  EcoMove
//
//  Created by Tristan Aly on 17/06/2022.
//

import SwiftUI

struct HistoryView: View {
    
    @State var chooseHistory = 0
    var body: some View {
        VStack{
            HistoryCard()
            Picker("test", selection: $chooseHistory, content: {
                Text("Nos points").tag(0)
                Text("A venir").tag(1)
            }).pickerStyle(.segmented)
                .padding(.horizontal)
            if chooseHistory == 0 {
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
            } else {
                ScrollView{
                ComingReward()
                }
            }
            
            Divider()
            
//        ScrollView{
//            VStack{
//                ForEach(9...17, id: \.self) { index in
//                    VStack(alignment: .leading, spacing: 10){
//                        Text("\(index) Juin")
//                            .padding(.horizontal)
//                            .font(.title2)
//                        HStack{
//                            Spacer()
//                        HistoryTravel()
//                            Spacer()
//                        }
//                        Divider()
//                    }//: VStack
//                } //: ForEach
//            }//: VStack
//        }//: ScrollView
        } //: VStack
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
