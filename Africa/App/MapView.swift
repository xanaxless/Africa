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
                MapAnnotationView(location: item)
            }
        }//Map
        .overlay(
            HStack(alignment:.center, spacing: 12){
                Image("compass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48)
                VStack(alignment:.leading, spacing: 4){
                    HStack(){
                        Text("Latitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                    Divider()
                    HStack(){
                        Text("Longitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                    
                }
            }//HStack
                .padding(.vertical,12)
                .padding(.horizontal,16)
                .background(Color.black.cornerRadius(8).opacity(0.6))
                .padding()
            ,alignment: .top
        )
    }
}


// MARK: - Preview
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
