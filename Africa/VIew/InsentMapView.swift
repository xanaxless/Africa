//
//  InsentMapView.swift
//  Africa
//
//  Created by Yerkebulan Serikov on 23.04.2022.
//

import SwiftUI
import MapKit


struct InsentMapView: View {
    // MARK: - Properties
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60, longitudeDelta: 60))
    
    // MARK: - Body
    var body: some View {
        Map(coordinateRegion: $region)
            .overlay(
                NavigationLink(destination: MapView()){
                    HStack(){
                        Image(systemName: "mappin.circle")
                            .foregroundColor(.white)
                            .imageScale(.large)
                        Text("Locations")
                            .foregroundColor(.accentColor)
                            .fontWeight(.bold)
                    }//:HStack
                    .padding(.vertical, 10)
                    .padding(.horizontal, 14)
                    .background(
                        Color.black.opacity(0.4)
                            .cornerRadius(8)
                    )
                }//:Navigation
                    .padding(12)
                , alignment: .topTrailing
            )
            .frame(height:256)
            .cornerRadius(12)
        
    }
}

// MARK: - Preview
struct InsentMapView_Previews: PreviewProvider {
    static var previews: some View {
        InsentMapView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
