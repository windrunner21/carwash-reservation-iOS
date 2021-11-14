//
//  BookingView.swift
//  Washine
//
//  Created by Imran on 17.10.21.
//

import SwiftUI

struct BookingView: View {
    @State private var showContactModal: Bool = false
    @State private var showListModal: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                // Title and car wash controls
                VStack() {
                    HStack(alignment: .center) {
                        Text("Car Washes")
                            .fontWeight(.light)
                            .textCase(.uppercase)
                            .foregroundColor(.gray)
                        
                        Spacer()
                        
                        Button(action: {
                            showListModal = true
                        }) {
                            Text("All")
                        }
                    }
                    .padding([.leading, .trailing])
                    
                    // Map View
                    MapView().frame(height: 300)
                    
                    // Booking details
                    VStack(alignment: .leading) {
                        // title
                        Text("Booking Details")
                            .fontWeight(.light)
                            .textCase(.uppercase)
                        .foregroundColor(.gray)
                        .padding([.leading])
                        
                        // Date child view
                        DatePickerView()
                        
                        // Time child view
                        TimePickerView()
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .topLeading)
                    .padding([.top, .bottom])
                    
                    // Booking Button
                    Button(action: {
                        showContactModal = true
                    }) {
                        Text("Continue")
                            .font(.system(size: 20, weight: .semibold))
                            .frame(maxWidth: .infinity)
                    }
                    .padding()
                    .foregroundColor(.white)
                    .background(
                        LinearGradient(colors: [.blue, .purple], startPoint: .leading, endPoint: .trailing)
                    )
                    .cornerRadius(10)
                    .padding()
                    
                    
                    Spacer()
                }
                .sheet(isPresented: $showContactModal, onDismiss: {print("closed contact")}, content: {
                    ContactModalView(isPresented: $showContactModal)
                })
                .sheet(isPresented: $showListModal, onDismiss: {print("closed list")}, content: {
                    WashListModalView(isPresented: $showListModal)
                })
                .navigationTitle("Booking")
            }
        }
    }
}

struct BookingView_Previews: PreviewProvider {
    static var previews: some View {
        BookingView()
            .environmentObject(BookingManager(selectedDateByIndex: 0, selectedTimeByIndex: 0))
    }
}
