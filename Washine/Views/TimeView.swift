//
//  TimeView.swift
//  Washine
//
//  Created by Imran on 17.10.21.
//

import SwiftUI

struct TimeView: View {
    var timeIndex: Int
    let currentDate = Date()
    let calendar = Calendar.current
    @EnvironmentObject var manager: BookingManager
    
    var timeShown: String {        
        if timeIndex < 10 {
            return "0\(timeIndex):00"
        } else if timeIndex > 23 {
            return "0\(timeIndex % 6):00"
        }
        else {
            return "\(timeIndex):00"
        }
    }
    
    var body: some View {
        Button(action: {
            manager.setSelectedTimeByIndex(timeIndex)
            manager.setSelectedTime(timeShown)
        }) {
            Text(timeShown)
                .padding()
                .foregroundColor(.white)
                .background(manager.selectedTimeByIndex == timeIndex ? Color.blue : Color.gray)
                .cornerRadius(10)
        }
    }
}

struct TimeView_Previews: PreviewProvider {
    static var previews: some View {
        TimeView(timeIndex: 0)
            .environmentObject(BookingManager(selectedDateByIndex: 0, selectedTimeByIndex: 0))
    }
}
