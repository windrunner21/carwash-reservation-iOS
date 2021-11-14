//
//  DateView.swift
//  Washine
//
//  Created by Imran on 17.10.21.
//

import SwiftUI

struct DateView: View {
    var dateIndex: Int
    let currentDate = Date()
    let calendar = Calendar.current
    @EnvironmentObject var manager: BookingManager
    
    var dayShown: String {
        let dayComponent = calendar.dateComponents([.day], from: currentDate)
        var day = dayComponent.day!
        day += dateIndex

        if day < 10 {
            return "0\(day)"
        }
        else {
            return String(day)
        }
    }

    var monthShown: String {
        let monthComponent = calendar.dateComponents([.month], from: currentDate)
        let month = monthComponent.month!

        if month < 10 {
            return "0\(month)"
        }
        else {
            return String(month)
        }
    }
    
    var yearShown: String {
        let yearComponent = calendar.dateComponents([.year], from: currentDate)
        let year = yearComponent.year! % 100
        
        return String(year)
    }
    
    var body: some View {
        Button(action: {
            manager.setSelectedDateByIndex(dateIndex)
            manager.setSelectedDate("\(dayShown)/\(monthShown)/\(yearShown)")
        }) {
            VStack {
                Text(dayShown)
                    .font(.system(size: 36, weight: .heavy))
                Text("\(monthShown)/\(yearShown)")
            }
            .padding()
            .foregroundColor(.white)
            .background(manager.selectedDateByIndex == dateIndex ? Color.blue : Color.gray)
            .cornerRadius(10)
        }
    }
}

struct DateView_Previews: PreviewProvider {
    static var previews: some View {
        DateView(dateIndex: 0)
            .environmentObject(BookingManager(selectedDateByIndex: 0, selectedTimeByIndex: 0))
    }
}
