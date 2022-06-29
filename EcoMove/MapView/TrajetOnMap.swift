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
        ZStack{
            Color("LightGreen")
        VStack{
        VStack{
            Map(directions: $directions)
        }
                Button(action: {
                  self.show.toggle()
                }, label: {
                    VStack{
                  Text("Voir directions")
                            .foregroundColor(.white)
                        .padding()
                        Spacer()
                    }
                })
                .disabled(directions.isEmpty)
                .padding()
        }.background(Color("LightGreen"))

        
                .edgesIgnoringSafeArea(.all)
                .sheet(isPresented: $show, content: {
                    HalfSheet{
                        VStack{
                            VStack(alignment: .leading){
                                HStack{
                                    Image(systemName: "figure.walk")
                                        .font(.largeTitle)
                                    Spacer()
                                    Text("14 min")
                                        .font(.title)
                                        .bold()
                                }.foregroundColor(.white)
                                .padding()
                                .background(Color("LightGreen"))
                                Divider()
//                                DirectionList()
                                    .foregroundColor(.green)
                            }
                        }
                    }
                })
        }
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

        // Vieux Port
          let p1 = MKPlacemark(coordinate: CLLocationCoordinate2D(latitude: 43.29500, longitude: 5.37398))

        // 46 Rue des Petites Maries, 13001 Marseille
          let p2 = MKPlacemark(coordinate: CLLocationCoordinate2D(latitude: 43.30168, longitude: 5.37919))

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
          renderer.strokeColor = .green
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
