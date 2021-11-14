//
//  LoginView.swift
//  Washine
//
//  Created by Imran on 16.10.21.
//

import SwiftUI

struct LoginView: View {
    @Binding var isAutheticated: AuthState
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Car 2 Wash")
                .font(.system(size: 36, weight: .bold))
            
            Text("No waiting in line. Instant booking.")
                .fontWeight(.light)
                .foregroundColor(.gray)
            
            Spacer()
            
            Button(action: {
                isAutheticated = .authorized
            }) {
                Text("Start booking")
                    .font(.system(size: 20, weight: .semibold))
                    .frame(maxWidth: .infinity)
                   
            }
            .padding()
            .foregroundColor(.white)
            .background(
                LinearGradient(colors: [.blue, .purple], startPoint: .leading, endPoint: .trailing)
            )
            .cornerRadius(10)
            .padding([.leading, .trailing], 30)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(isAutheticated: .constant(.unauthorized))
    }
}
