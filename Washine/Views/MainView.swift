//
//  MainView.swift
//  Washine
//
//  Created by Imran on 17.10.21.
//

import SwiftUI

struct MainView: View {
    @State private var isAuthorized: AuthState = .unauthorized
    
    var body: some View {
        if isAuthorized == .authorized {
            BookingView()
                .environmentObject(BookingManager(selectedDateByIndex: 0, selectedTimeByIndex: 0))
        } else {
            LoginView(isAutheticated: $isAuthorized)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
