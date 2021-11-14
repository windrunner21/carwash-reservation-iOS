//
//  CarWashMapView.swift
//  Washine
//
//  Created by Imran on 02.11.21.
//

import SwiftUI
import MapKit

struct CarWashMapView: View {
    @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 40.37_60_20, longitude: 49.85_30_96),
            span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        )
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct CarWashMapView_Previews: PreviewProvider {
    static var previews: some View {
        CarWashMapView()
    }
}
