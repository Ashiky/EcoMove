//
//  Map.swift
//  EcoMove
//
//  Created by apprenant70 on 17/06/2022.
//

import CoreLocationUI
import CoreLocation
import MapKit
import SwiftUI
import FirebaseDatabase

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    let manager = CLLocationManager()
    
    
    
    @Published var location: CLLocationCoordinate2D?

    
    
    override init() {
        super.init()
        manager.delegate = self
    }
    
    func requestLocation() {
        manager.requestLocation()
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error.localizedDescription)
    }
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        
        if manager.authorizationStatus == .authorizedWhenInUse{
            print("Authorized")
            manager.startUpdatingLocation()
        } else {
            print("not authorized")
            manager.requestWhenInUseAuthorization()
        }
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        location = locations.first?.coordinate
    }
    
  
}

struct MapView: View {
    @State var userTrackingMode: MapUserTrackingMode = .follow
    
    @StateObject var locationManager = LocationManager()
    
//    @State private var sheetMode: SheetMode = .quarter
    
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 43.295224, longitude: 5.374155), span: MKCoordinateSpan(latitudeDelta: 0.007, longitudeDelta: 0.007))
   
//    @StateObject private var mapdata = mapViewModel()
    
    
    
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
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                
                Map(coordinateRegion: $mapRegion, showsUserLocation: true, userTrackingMode: $userTrackingMode, annotationItems: metroTramList) { metroTram in
                    MapMarker(coordinate: metroTram.pointGeo, tint: metroTram.color)
                }
                .ignoresSafeArea()
                .onChange(of: locationManager.location) { newValue in
                    if locationManager.location != nil {
                        withAnimation {
                            mapRegion.center = locationManager.location!
                        }
                    }
                }
                
                
                VStack(alignment: .trailing) {
                    HStack{
                      PointView()
                        Spacer()
                       
                    LocationButton(.currentLocation) {
                        locationManager.requestLocation()
                        if locationManager.location != nil {
                            withAnimation {
                                mapRegion.center = locationManager.location!
                            }
                        }
                    }
                    .foregroundColor(.white)
                    .cornerRadius(25)
                    .labelStyle(.iconOnly)
                    .tint(Color("DarkGreen"))
                    }
                    
                    
                    Button(action: {} ,label: {
                        ZStack {
                            Circle()
                                .frame(width: 40, height: 40)
                                .foregroundColor(Color("DarkGreen"))
                            Image(systemName: "map")
                                .foregroundColor(.white)
                                .cornerRadius(25)
                                .labelStyle(.iconOnly)
                        }
                    })
                }
                .padding()
                
                VStack {
                    Spacer()
                    ZStack {
                        Rectangle()
                            .fill(.white)
                            .frame(maxWidth: 360,maxHeight: 140)
                            .cornerRadius(20)
                        VStack {
                            Button(action: {
                            }) {
                                NavigationLink(destination: ModalViewAdresse()) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 10.0)
                                            .frame(maxWidth: 340,maxHeight: 50)
                                            .foregroundColor(Color("LightGreen"))
                                        Text("Trouver mon chemin")
                                            .foregroundColor(.white)
                                            .fontWeight(.bold)
                                    }
                                }
                            }
                            ButtonView(colorButton: [
                                Bouton(colors: "Grayperso", iconne: "figure.walk"),
                                Bouton(colors: "Grayperso", iconne:"scooter"),
                                Bouton(colors:"Grayperso", iconne:"bicycle"),
                                Bouton(colors: "LightGreen", iconne:"tram.fill"),
                                Bouton(colors: "LightGreen", iconne:"tram"),
                                Bouton(colors: "Grayperso", iconne:"bus")
                            ])
                        }
                    }
                    .padding()
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
            .onAppear{
                getMT()
            }
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
    var icon: String {
        switch nomDuResau {
        case "Métro":
            return "tram.fill.tunnel"
        case "Tramway":
            return "tram"
        default:
            return "Rien"
        }
    }
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
    var ColorButton: String {
        switch modeDeTransport {
        case "Métro":
            return "Grayperso"
        case "Tramway":
            return "Grayperso"
        default:
            return "Rien"
        }
    }
}
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
