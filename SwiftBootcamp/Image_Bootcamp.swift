//
//  Image_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 1/17/23.
//

import SwiftUI

struct Image_Bootcamp: View {
    var body: some View {
        Image("Abosede")
//            .renderingMode(.template)
            .resizable()
            //.scaledToFill()
            //.scaledToFit()
            .frame(width: 200, height: 200)
            .foregroundColor(.green)
            //.clipped()
            //.cornerRadius(100)
            //.clipShape(
                //Circle()
                //Ellipse()
                //RoundedRectangle(cornerRadius: 60)
            //)
    }
}

struct Image_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Image_Bootcamp()
    }
}
