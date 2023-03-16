//
//  Slider_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 2/7/23.
//

import SwiftUI

struct Slider_Bootcamp: View {
    
    @State var myValue: Double = 10
    
    var body: some View {
        VStack {
            HStack {
                Text("Rating:")
                
                Text(
                    String(format: "%.0f", myValue)
                    //"\(myValue)"
                )
            }
            //Slider(value: $myValue)
            //Slider(value: $myValue, in: 1...5)
            //Slider(value: $myValue, in: 1...5, step: 1.0)
            Slider(value: $myValue, in: 1...5, label: {
                Text("Slider")
            }) {
                Text("1")
            } maximumValueLabel: {
                Text("5")
            }
            .padding(.horizontal, 80)
            .accentColor(Color.red)

        }
    }
}

struct Slider_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Slider_Bootcamp()
    }
}
