//
//  TimePickerView.swift
//  Washine
//
//  Created by Imran on 17.10.21.
//

import SwiftUI

struct TimePickerView: View {
    let currentDate = Date()
    let calendar = Calendar.current
    @EnvironmentObject var manager: BookingManager

    var startIndex: Int {
        let hourComponent = calendar.dateComponents([.hour], from: currentDate)
        let hour = hourComponent.hour!
        
        if manager.selectedDateByIndex != 0 {
            return 6
        } else {
            return hour + 1
        }
    }
    var endIndex: Int {
        if manager.selectedDateByIndex != 0 {
            return 30
        } else {
            return 24
        }
    }

    var body: some View {
        VStack(alignment: .leading) {
            Text("Time")
                .font(.system(size: 20, weight: .bold))
                .padding([.leading, .top])
            
            ScrollView(.horizontal) {
                HStack(spacing: 20.0) {
                    ForEach(startIndex..<endIndex, id: \.self) {index in
                        TimeView(timeIndex: index)
                    }
                }
            }
        }
    }
}

struct TimePickerView_Previews: PreviewProvider {
    static var previews: some View {
        TimePickerView()
            .environmentObject(BookingManager(selectedDateByIndex: 0, selectedTimeByIndex: 0))
    }
}
