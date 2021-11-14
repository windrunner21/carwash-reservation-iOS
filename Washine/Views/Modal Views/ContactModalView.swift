//
//  ContactModalView.swift
//  Washine
//
//  Created by Imran on 18.10.21.
//

import SwiftUI

struct ContactModalView: View {
    @Binding var isPresented: Bool
    @State private var phoneNumber: String = "+994"
    @State private var licensePlate: String = ""
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Enter your contact information")
                    .foregroundColor(.gray)
                    .fontWeight(.semibold)
                
                
                VStack {
                    TextField("Phone Number", text: $phoneNumber)
                        .font(.system(size: 24, weight: .bold))
                        .keyboardType(.phonePad)
                        .padding([.top])
                    Divider()
                        .padding([.bottom])
                    TextField("10AB123", text: $licensePlate)
                        .font(.system(size: 24, weight: .bold))
                        .textCase(.uppercase)
                    Divider()
                }
                .padding([.bottom])

                
                Button(action: {
                    isPresented = false
                }) {
                    Text("Book")
                        .font(.system(size: 20, weight: .semibold))
                        .frame(maxWidth: .infinity)
                }
                .padding()
                .foregroundColor(.white)
                .background(
                    LinearGradient(colors: [.blue, .purple], startPoint: .leading, endPoint: .trailing)
                )
                .cornerRadius(10)
                
                Spacer()
            }
            .padding([.trailing, .leading])
            .navigationTitle("Contact")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        isPresented = false
                    }
                }
            }
            
        }
    }
}

struct ContactModalView_Previews: PreviewProvider {
    static var previews: some View {
        ContactModalView(isPresented: .constant(true))
    }
}
