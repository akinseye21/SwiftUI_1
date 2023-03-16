//
//  Shapes_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 12/28/22.
//

import SwiftUI

struct Shapes_Bootcamp: View {
    var body: some View {
        //Circle()
        //Ellipse()
        //Capsule(style: .continuous)
        RoundedRectangle(cornerRadius: 50.0)
            //.fill(.green)
            //.foregroundColor(.brown)
            //.stroke()
            //.stroke(Color.red)
            //.stroke(Color.blue, lineWidth: 20.0)
            //.stroke(Color.red, style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [10]))
            //.trim(from: 0.3, to: 1.0)
            //.stroke(Color.blue, lineWidth: 20)
            .frame(width: 200, height: 100)
    }
}

struct Shapes_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Shapes_Bootcamp()
    }
}
