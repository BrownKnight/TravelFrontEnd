//
//  Itineraries.swift
//  FrontEnd
//
//  Created by Amanvir Dhoot on 15/11/2023.
//

import Foundation
import MapKit

struct Itineraries: Hashable, Codable {   
    var data: [Itinerary]
}

struct Itinerary: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var date: String
    var pins: [Pin]
}

struct Pin: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var lat: Double
    var long: Double
    
    var coordinate : CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: CLLocationDegrees(floatLiteral: lat),
            longitude: CLLocationDegrees(floatLiteral: long))
    }
}


