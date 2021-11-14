//
//  CarWashDetail.swift
//  Washine
//
//  Created by Imran on 02.11.21.
//

import SwiftUI

struct CarWashDetail: View {
    var carWash: CarWash
    
    var body: some View {
        ScrollView {
            CarWashMapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)

                    CircleImage()
                        .offset(y: -130)
                        .padding(.bottom, -130)

                    VStack(alignment: .leading) {
                        Text(carWash.name)
                            .font(.title)

                        HStack {
                            Text(carWash.address)
                            Spacer()
                            Text(carWash.city)
                        }
                        .font(.subheadline)
                        .foregroundColor(.secondary)

                        Divider()

                        Text("About \(carWash.name)")
                            .font(.title2)
                        Text(carWash.description)
                    }
                    .padding()

                    Spacer()
                }
    }
}

struct CarWashDetail_Previews: PreviewProvider {
    static var previews: some View {
        CarWashDetail(carWash: carWashes[0])
    }
}
