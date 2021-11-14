//
//  BookingManager.swift
//  Washine
//
//  Created by Imran on 02.11.21.
//

import Foundation


class BookingManager: ObservableObject {
    @Published var selectedDateByIndex: Int
    @Published var selectedTimeByIndex: Int
    var selectedDate: String = String()
    var selectedTime: String = String()
    
    init(selectedDateByIndex: Int, selectedTimeByIndex: Int) {
        self.selectedDateByIndex = selectedDateByIndex
        self.selectedTimeByIndex = selectedTimeByIndex
    }
    
    func setSelectedDateByIndex(_ passedDateIndex: Int) {
        selectedDateByIndex = passedDateIndex
    }
    
    func setSelectedTimeByIndex(_ passedTimeIndex: Int) {
        selectedTimeByIndex = passedTimeIndex
    }
    
    func setSelectedDate(_ passedDate: String) {
        selectedDate = passedDate
    }
    
    func setSelectedTime(_ passedTime: String) {
        selectedTime = passedTime
    }
}
