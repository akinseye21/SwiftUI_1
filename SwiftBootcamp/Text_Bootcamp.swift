//
//  Text_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 12/28/22.
//

import SwiftUI

struct Text_Bootcamp: View {
    var body: some View {
        Text("Hello everyone, this is me learning swift in a bootcamp class that I found online. Let's have some fun".uppercased())
            //.baselineOffset(50.0)
            //.kerning(5.0)
            //.font(.largeTitle)
            //.font(.system(size: 20, weight: .semibold, design: .rounded))
            .multilineTextAlignment(.leading)
            .foregroundColor(.blue)
            .frame(width: 200.0, height: 200.0, alignment: .center)
            .minimumScaleFactor(0.1)
            
    }
}

struct Text_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Text_Bootcamp()
    }
}
