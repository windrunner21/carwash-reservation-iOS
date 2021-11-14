//
//  DatePickerView.swift
//  Washine
//
//  Created by Imran on 17.10.21.
//

import SwiftUI

struct DatePickerView: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Date")
            .font(.system(size: 20, weight: .bold))
            .padding([.leading, .top])
            
            
            ScrollView(.horizontal) {
                HStack(spacing: 20.0) {
                    ForEach (0..<10, id: \.self) { index in
                        DateView(dateIndex: index)
                    }
                }
            }
        }
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
