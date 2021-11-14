//
//  CarWashLocation.swift
//  Washine
//
//  Created by Imran on 03.11.21.
//

import Foundation
import CoreLocation

struct CarWashLocation: Identifiable {
    let id = UUID()
    let name: String
    let latitude: Double
    let longitude: Double
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
