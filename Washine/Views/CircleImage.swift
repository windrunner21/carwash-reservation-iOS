//
//  CircleImage.swift
//  Washine
//
//  Created by Imran on 02.11.21.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("carwash")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
