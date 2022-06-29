//
//  TrajetList.swift
//  EcoMove
//
//  Created by Tristan Aly on 29/06/2022.
//

import SwiftUI

struct TrajetList: View {
    var body: some View {
        VStack{
            VStack{
            ZStack{
            VStack{
                HStack{
                    Image(systemName: "location.circle.fill")
                        .foregroundColor(Color("DarkGreen"))
                    Text("Station Le Vieux Port")
                    Spacer()
                }.padding(10)
                .background(RoundedRectangle(cornerRadius: 8).fill(Color.white).frame(width: 370, height: 40))
                HStack{
                    Image(systemName: "flag.fill")
                        .foregroundColor(Color("DarkGreen"))
                Text("14 boulevard Longchamp, 13001, Marseille")
                    Spacer()
                } .padding(10)
                    .background(RoundedRectangle(cornerRadius: 8).fill(Color.white).frame(width: 370, height: 40));
            }.padding()
                CircleButton()
                    .offset(x: 170)
            }
                
                Spacer()
        }// VStack
        .frame(width: 400, height: 200)
     .background(Color("LightGreen"))
           
            TrajetOne()
            Divider()
            
            NavigationLink(destination: TrajetOnMap(), label: {
            TrajetOneAlternative()
            })
            .foregroundColor(.black)
             Divider()
            Spacer()
        }.navigationBarTitleDisplayMode(.inline)
    }
}

struct TrajetList_Previews: PreviewProvider {
    static var previews: some View {
        TrajetList()
    }
}
