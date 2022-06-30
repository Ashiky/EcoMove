//
//  TrajetOnMap.swift
//  EcoMove
//
//  Created by Tristan Aly on 29/06/2022.
//

import MapKit
import SwiftUI
import UIKit

struct TrajetOnMap: View {
    @State private var directions: [String] = []
    //      @State private var showDirections = false
    @State var show = true
    
    var body: some View {
        ZStack(alignment: .top){
            VStack{
                Map(directions: $directions)
            }
            .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .trailing) {
                HStack{
                    PointView()
                    Spacer()
                    Image(systemName: "location")
                        .foregroundColor(.white)
                        .background(Circle().fill(Color("DarkGreen")).frame(width: 40, height: 40))
                        .padding(10)
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
                Button(action: {
                    self.show.toggle()
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10.0)
                            .frame(maxWidth: 340,maxHeight: 50)
                            .foregroundColor(Color("LightGreen"))
                        Text("Chemin à suivre")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                    }
                })
                .disabled(directions.isEmpty)
                .padding()
            }
        }
       
        .sheet(isPresented: $show, content: {
            HalfSheet1{
                ModalViewChemin()
            }
        })
    }
    
    struct Map: UIViewRepresentable {
        
        typealias UIViewType = MKMapView
        
        @Binding var directions: [String]
        
        func makeCoordinator() -> MapViewCoordinator {
            return MapViewCoordinator()
        }
        
        func makeUIView(context: Context) -> MKMapView {
            let mapView = MKMapView()
            mapView.delegate = context.coordinator
            // coordination
            let region = MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 40.71, longitude: -74),
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
            mapView.setRegion(region, animated: true)
            
            // Ma position
            let p1 = MKPlacemark(coordinate: CLLocationCoordinate2D(latitude: 43.29500, longitude: 5.37398))
            
            // 14 boulevard Longchamp, 13001 Marseille
            let p2 = MKPlacemark(coordinate: CLLocationCoordinate2D(latitude: 43.3008736, longitude: 5.3875954))
            
            let request = MKDirections.Request()
            request.source = MKMapItem(placemark: p1)
            request.destination = MKMapItem(placemark: p2)
            request.transportType = .walking
            
            let directions = MKDirections(request: request)
            directions.calculate { response, error in
                guard let route = response?.routes.first else { return }
                mapView.addAnnotations([p1, p2])
                mapView.addOverlay(route.polyline)
                mapView.setVisibleMapRect(
                    route.polyline.boundingMapRect,
                    edgePadding: UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20),
                    animated: true)
                self.directions = route.steps.map { $0.instructions }.filter { !$0.isEmpty }
            }
            return mapView
        }
        
        func updateUIView(_ uiView: MKMapView, context: Context) {
        }
        
        class MapViewCoordinator: NSObject, MKMapViewDelegate {
            func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
                let renderer = MKPolylineRenderer(overlay: overlay)
                renderer.strokeColor = .systemTeal
                renderer.lineWidth = 6
                return renderer
            }
        }
    }
}

struct TrajetOnMap_Previews: PreviewProvider {
    static var previews: some View {
        TrajetOnMap()
    }
}
