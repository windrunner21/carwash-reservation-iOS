//
//  CarWash.swift
//  Washine
//
//  Created by Imran on 02.11.21.
//

import Foundation
import SwiftUI
import CoreLocation

struct CarWash: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var city: String
    var address: String
    var description: String
    var rating: Double
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
