////
////  PlaceAnnotationView.swift
////  EcoMove
////
////  Created by apprenant70 on 24/06/2022.
////
//
//import SwiftUI
//
//struct PlaceAnnotationView: View {
//    @State private var showTitle = true
//    
//    let metroTramPAV: MetroTram
//    
//    var body: some View {
//        VStack(spacing: 0) {
//            Text(metroTramPAV.arret)
//            .font(.callout)
//            .padding(5)
//            .background(Color(.white))
//            .cornerRadius(10)
//            .opacity(showTitle ? 0 : 1)
//          
//          Image(systemName: "mappin.circle.fill")
//            .font(.title)
//            .foregroundColor(.red)
//          
//          Image(systemName: "arrowtriangle.down.fill")
//            .font(.caption)
//            .foregroundColor(.red)
//            .offset(x: 0, y: -5)
//        }
//        .onTapGesture {
//          withAnimation(.easeInOut) {
//            showTitle.toggle()
//          }
//        }
//    }
//}
//
//struct PlaceAnnotationView_Previews: PreviewProvider {
//    static var previews: some View {
//        PlaceAnnotationView(metroTramPAV: MetroTram(arret: "Blancarde", commune: "Marseille", modeDeTransport: "Tramway", nomDuResau: "RTM", pointGeo: CLLocationCoordinate2D(latitude: 43.2942625915, longitude: 5.4290510711), identifiantInterne: "T1"))
//    }
//}
