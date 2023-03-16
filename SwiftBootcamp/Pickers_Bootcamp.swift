//
//  Pickers_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 2/6/23.
//

import SwiftUI

struct Pickers_Bootcamp: View {
    
    @State var selection: String = ""
    
    var body: some View {
        VStack {
            HStack{
                Text("Selection:")
                Text(selection)
            }
            
            Picker(
                selection: $selection) {
                    ForEach(18..<100) { index in
                        Text("\(index)").tag("\(index)")
                    }
                } label: {
                    Text("Select")
                }
                //.pickerStyle(WheelPickerStyle())

            
            
//            Picker(
//                selection: $selection) {
//                    Text("Most Recent").tag("Most recent")
//                    Text("Most Viewed").tag("Most viewed")
//                    Text("Most Liked").tag("Most liked")
//                    Text("Most Deleted").tag("Most deleted")
//                    Text("Most Spammed").tag("Most spammed")
//                } label: {
//                    Text("Picker")
//            }
            //.pickerStyle(WheelPickerStyle())
        }

    }
}

struct Pickers_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Pickers_Bootcamp()
    }
}
