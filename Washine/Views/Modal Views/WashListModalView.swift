//
//  WashListModalView.swift
//  Washine
//
//  Created by Imran on 02.11.21.
//

import SwiftUI

struct WashListModalView: View {
    @Binding var isPresented: Bool
    
    var body: some View {
        NavigationView {
            List(carWashes) {carWash in
                NavigationLink(destination: CarWashDetail(carWash: carWash)) {
                    CarWashRowView(carWash: carWash)
                }
            }
            .navigationTitle("Car Washes")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Close") {
                        isPresented = false
                    }
                }
            }
        }
    }
}

struct WashListModalView_Previews: PreviewProvider {
    static var previews: some View {
        WashListModalView(isPresented: .constant(true))
    }
}
