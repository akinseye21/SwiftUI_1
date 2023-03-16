//
//  DatePicker_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 2/6/23.
//

import SwiftUI

struct DatePicker_Bootcamp: View {
    
    @State var selectedDate: Date = Date()
    @State var startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    @State var endingDate: Date = Date()
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium       //formatting the date
        formatter.timeStyle = .short        //fornatting the time
        return formatter
    }
    
    var body: some View {
//        DatePicker(
//            selection: $selectedDate) {
//                Text("Select a date")
//            }
        
        VStack {
            HStack {
                Text("Date = ")
                //Text(selectedDate.description)
                Text(dateFormatter.string(from: selectedDate))
            }.font(.headline)
            
            
            DatePicker("Select birth date",
                       selection: $selectedDate,
                       in: startingDate...endingDate,
                       displayedComponents: [.date, .hourAndMinute])
                .accentColor(Color.red)
            .datePickerStyle(CompactDatePickerStyle())
        }
            //.datePickerStyle(WheelDatePickerStyle())
    }
}

struct DatePicker_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePicker_Bootcamp()
    }
}
