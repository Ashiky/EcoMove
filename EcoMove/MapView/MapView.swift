//
//  Map.swift
//  EcoMove
//
//  Created by apprenant70 on 17/06/2022.
//

import MapKit
import SwiftUI

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

struct MapView: View {
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 43.295224, longitude: 5.374155), span: MKCoordinateSpan(latitudeDelta: 0.007, longitudeDelta: 0.007))
    
    let location = [
        Location(name: "Levélo+", coordinate: CLLocationCoordinate2D(latitude: 43.295909, longitude: 5.373987)),
        Location(name: "Levélo+", coordinate: CLLocationCoordinate2D(latitude: 43.29437, longitude: 5.374375))
    ]
    
    var body: some View {
        Map(coordinateRegion: $mapRegion, annotationItems: location) { location in
            MapMarker(coordinate: location.coordinate, tint: .brown)

        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
