//
//  CarWashRowView.swift
//  Washine
//
//  Created by Imran on 02.11.21.
//

import SwiftUI

struct CarWashRowView: View {
    var carWash: CarWash
    
    var body: some View {
        HStack {
            Text(carWash.name)
            Spacer()
        }
    }
}

struct CarWashRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CarWashRowView(carWash: carWashes[0])
            CarWashRowView(carWash: carWashes[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
