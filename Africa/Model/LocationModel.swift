//
//  LocationModel.swift
//  Africa
//
//  Created by Yerkebulan Serikov on 25.04.2022.
//

import Foundation
import MapKit

struct NationalParkLocation: Identifiable, Codable{
    let id: String
    let name: String
    let image: String
    let latitude: Double
    let longitude: Double
    
    var location : CLLocationCoordinate2D{
        return CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
