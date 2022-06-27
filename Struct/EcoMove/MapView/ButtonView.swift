////
////  ButtonView.swift
////  EcoMove
////
////  Created by apprenant70 on 25/06/2022.
////
//
//import SwiftUI
//
//struct ButtonView: View {
//    
//    var metroTramIcon: MetroTram
//    
//    var body: some View {
//        Button {
//            MapMarker(coordinate: metroTram.pointGeo, tint: metroTram.color)
//        } label: {
//            ZStack {
//                RoundedRectangle(cornerRadius: 10.0)
//                    .frame(maxWidth: 50,maxHeight: 50)
//                    .foregroundColor(Color("DarkGreen"))
//                Image(systemName: metroTram.icon)
//                    .foregroundColor(.white)
//            }
//        }
//        
//    }
//}
//
//struct ButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        ButtonView()
//    }
//}
//
//
////HStack {
////    ZStack {
////        RoundedRectangle(cornerRadius: 10.0)
////            .frame(maxWidth: 50,maxHeight: 50)
////            .foregroundColor(Color("DarkGreen"))
////        Text("Tous")
////            .foregroundColor(.white)
////            .fontWeight(.bold)
////        }
////    ZStack {
////        RoundedRectangle(cornerRadius: 10.0)
////            .frame(maxWidth: 50,maxHeight: 50)
////            .foregroundColor(Color("DarkGreen"))
////    Image(systemName: "bicycle")
////        .foregroundColor(.white)
////    }
////    ZStack {
////        RoundedRectangle(cornerRadius: 10.0)
////            .frame(maxWidth: 50,maxHeight: 50)
////            .foregroundColor(Color("DarkGreen"))
////    Image(systemName: "scooter")
////        .foregroundColor(.white)
////    }
////    ZStack {
////        RoundedRectangle(cornerRadius: 10.0)
////            .frame(maxWidth: 50,maxHeight: 50)
////            .foregroundColor(Color("DarkGreen"))
////    Image(systemName: "tram")
////        .foregroundColor(.white)
////    }
////    ZStack {
////        RoundedRectangle(cornerRadius: 10.0)
////            .frame(maxWidth: 50,maxHeight: 50)
////            .foregroundColor(Color("DarkGreen"))
////    Image(systemName: "tram.fill.tunnel")
////        .foregroundColor(.white)
////    }
////    ZStack {
////        RoundedRectangle(cornerRadius: 10.0)
////            .frame(maxWidth: 50,maxHeight: 50)
////            .foregroundColor(Color("DarkGreen"))
////    Image(systemName: "bus")
////        .foregroundColor(.white)
////    }
////}
