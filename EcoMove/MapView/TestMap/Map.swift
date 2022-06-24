//////
//////  Map.swift
//////  EcoMove
//////
//////  Created by apprenant70 on 21/06/2022.
//////
////
////import Foundation
////import MapKit
////import SwiftUI
////
////struct Map: UIViewRepresentable {
////    func makeUIView(context: Context) -> MKMapView {
////        let mapView = MKMapView()
////        return mapView
////    }
////    func updateUIView(_ uiView: UIViewType, context: Context) {
////        _ = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 43.295224, longitude: 5.374155), span: MKCoordinateSpan(latitudeDelta: 0.007, longitudeDelta: 0.007))
////    }
////}
//
////
////  Map.swift
////  EcoMove
////
////  Created by apprenant70 on 17/06/2022.
////
//
//import MapKit
//import SwiftUI
//
//struct MapView: View {
//    
//    @State private var sheetMode: SheetMode = .quarter
//    
//    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 43.295224, longitude: 5.374155), span: MKCoordinateSpan(latitudeDelta: 0.007, longitudeDelta: 0.007))
//    
//    let transportMV: Transports
//    
//    var body: some View {
//        ZStack {
//            Map(coordinateRegion: $mapRegion, annotationItems: transportMV.location) { transport in
////                MapMarker(coordinate: transport.location, tint: Color("DarkGreen"))
//                MapMarker(coordinate: transport.location, tint: transportMV.colorT)
//            }
//            FlexibleSheet(sheetMode: $sheetMode) {
//                ModalViewAdresse()
//            }
//            .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
//            
//        }
//    }
//}
//
//struct MapView_Previews: PreviewProvider {
//    static var previews: some View {
//        MapView(transportMV: Transports(iconT: "tram.fill.tunnel", nameT: .M1, colorT: .blue, départ: "La Fourragère", terminus: "La Rose",
//                                      stationT: ["La Fourragère",
//                                                 "Saint-Barnabé",
//                                                 "Louis Armand",
//                                                 "La Blancarde",
//                                                 "La Timone",
//                                                 "Baille",
//                                                 "Castellane",
//                                                 "Estrangin - Préfecture",
//                                                 "Vieux-Port",
//                                                 "Colbert",
//                                                 "Saint-Charles",
//                                                 "Réformés Canebière",
//                                                 "Cinq Avenues Longchamps",
//                                                 "Chartreux",
//                                                 "Saint-Just",
//                                                 "Malpassé",
//                                                 "Frais Vallon",
//                                                 "La Rose"],
//                                        location: [Location(location: CLLocationCoordinate2D(latitude: 43.033773, longitude: 5.424445)), //La fouragère
//                                                   Location(location:CLLocationCoordinate2D(latitude: 43.3037192, longitude: 5.4195614)), // Saint-Baranabé
//                                                   Location(location:CLLocationCoordinate2D(latitude: 43.2999708, longitude: 5.4129976)), //Louis Armand
//                                                   Location(location:CLLocationCoordinate2D(latitude: 43.2991339, longitude: 5.4123692)), //La Blancarde
//                                                   Location(location:CLLocationCoordinate2D(latitude: 43.2909993, longitude: 5.4001161)), //La Timone
//                                                   Location(location:CLLocationCoordinate2D(latitude: 43.28813934326172, longitude: 5.392107963562012)), //Baille
//                                                   Location(location:CLLocationCoordinate2D(latitude: 43.28594207763672, longitude: 5.383809566497803)), //Castellane
//                                                   Location(location:CLLocationCoordinate2D(latitude: 43.2901874229198, longitude: 5.37799618846897)), //Estrangin - Préfecture
//                                                   Location(location:CLLocationCoordinate2D(latitude: 43.29535703569381, longitude: 5.374391299552914)), //Vieux-Port
//                                                   Location(location:CLLocationCoordinate2D(latitude: 43.30007333829382, longitude: 5.374557596511758)), //Colbert
//                                                   Location(location:CLLocationCoordinate2D(latitude: 43.30301693777021, longitude: 5.380426269836303)), //Saint-Charles
//                                                   Location(location:CLLocationCoordinate2D(latitude: 43.299842213631266, longitude: 5.385341140655391)), //Réformés Canebière
//                                                   Location(location:CLLocationCoordinate2D(latitude: 43.30431808511653, longitude: 5.39697388115286)), //Cinq Avenues Longchamps
//                                                   Location(location:CLLocationCoordinate2D(latitude: 5.39697388115286, longitude: 5.4032264)), //Chartreux
//                                                   Location(location:CLLocationCoordinate2D(latitude: 43.3163622, longitude: 5.4053433)), //Saint-Just
//                                                   Location(location:CLLocationCoordinate2D(latitude: 43.3209317530739, longitude: 5.416426448548983)), //Malpassé
//                                                   Location(location:CLLocationCoordinate2D(latitude: 43.3250085, longitude: 5.424552)), //Frais Vallon
//                                                   Location(location:CLLocationCoordinate2D(latitude: 43.3329552, longitude: 5.4296607))])
//        )
//    }
//}
//
