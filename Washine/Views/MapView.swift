//
//  MapView.swift
//  Washine
//
//  Created by Imran on 17.10.21.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var locationManager = LocationManager()
    @State private var trackingMode: MapUserTrackingMode = .follow
    
    let CarWashLocations = [
        CarWashLocation(name: "Luxor", latitude: 40.38_34_26, longitude: 49.81_61_93),
        CarWashLocation(name: "Washtec Baku", latitude: 40.37_60_37, longitude: 49.85_30_34),
    ]
    
    var body: some View {
        Map(coordinateRegion: $locationManager.region,
            interactionModes: MapInteractionModes.all,
            showsUserLocation: true,
            userTrackingMode: $trackingMode,
            annotationItems: CarWashLocations,
            annotationContent: { location in
                MapMarker(coordinate: location.coordinate, tint: .blue)
            }
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
