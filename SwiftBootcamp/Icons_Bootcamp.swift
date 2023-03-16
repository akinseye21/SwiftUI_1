//
//  Icons_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 1/17/23.
//

import SwiftUI

struct Icons_Bootcamp: View {
    var body: some View {
        Image(systemName: "42.circle.fill") //use SF symbols
            .renderingMode(.original)
            .font(.largeTitle)
            //.font(.system(size: 50))
            //.resizable()
            //.scaledToFit()
            //.foregroundColor(Color.yellow)
            .frame(width: 200, height: 200)
    }
}

struct Icons_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Icons_Bootcamp()
    }
}
