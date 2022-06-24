//
//  Map.swift
//  EcoMove
//
//  Created by apprenant70 on 17/06/2022.
//

import MapKit
import SwiftUI
import FirebaseDatabase

struct MapView: View {
    
    @State private var sheetMode: SheetMode = .quarter
    
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 43.295224, longitude: 5.374155), span: MKCoordinateSpan(latitudeDelta: 0.007, longitudeDelta: 0.007))
    
    @State var metroTramList: [MetroTram] = []
    func getMT(){
        let ref = Database.database().reference()
        ref.child("MetroTram").observe(.value, with: { snapshot in
            metroTramList.removeAll()
            if let value = snapshot.value as? [[String: Any]] {
                for metroTram in value {
                    let fields = metroTram["fields"] as? [String: Any] ?? [:]
                    let arret = fields["arret"] as? String ?? ""
                    let commune = fields["commune"] as? String ?? ""
                    let modeDeTransport = fields["mode_de_transport"] as? String ?? ""
                    let nomDuReseau = fields["nom_de_reseau"] as? String ?? ""
                    let pointGeo = fields["point_geo"] as? [Double] ?? [0,0]
                    let latitude = pointGeo[0]
                    let longitude = pointGeo[1]
                    let identifiantInterne = fields["identifiant_interne"] as? String ?? ""
                    let metroTram = MetroTram(arret: arret, commune: commune, modeDeTransport: modeDeTransport, nomDuResau: nomDuReseau, pointGeo: CLLocationCoordinate2D(latitude: latitude, longitude: longitude), identifiantInterne: identifiantInterne)
                    metroTramList.append(metroTram)
                }
                
            }
        })
    }
    
    //    let transportMV: Transports
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $mapRegion, annotationItems: metroTramList) { metroTram in
        
                MapMarker(coordinate: metroTram.pointGeo, tint: metroTram.color)
                
            }
            
            FlexibleSheet(sheetMode: $sheetMode) {
                ModalViewAdresse()
            }
            .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
            
        }
        .onAppear{
            getMT()
        }
    }
}

struct MetroTram: Identifiable {
    var id = UUID()
    var arret : String
    var commune : String
    var modeDeTransport: String
    var nomDuResau: String
    var pointGeo: CLLocationCoordinate2D
    var identifiantInterne: String
    var color: Color {
        switch identifiantInterne {
        case "M1":
            return .blue
        case "M2":
            return .red
        case "T1":
            return .yellow
        case "T2":
            return .orange
        case "T3":
            return .green
        default:
            return .gray
        }
    }
}
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
