//
//  MapView.swift
//  Africa
//
//  Created by Yerkebulan Serikov on 22.04.2022.
//

import SwiftUI
import MapKit

struct MapView: View {
    // MARK: - Property
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    // MARK: - Body
    var body: some View {
        // MARK: - Basic map
        //Map(coordinateRegion: $region)
        
        // MARK: - Map with annotations
        
        Map(coordinateRegion: $region, annotationItems: locations) { item in
            // (A) pin
            // MapMarker(coordinate: item.location , tint: .accentColor)
            // Custom Annotation
            MapAnnotation(coordinate: item.location) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32, alignment: .center)
            }
        }
    }
}


// MARK: - Preview
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
