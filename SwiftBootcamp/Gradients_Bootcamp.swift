//
//  Gradients_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 1/17/23.
//

import SwiftUI

struct Gradients_Bootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(
                //Color.red
//                LinearGradient(
//                    gradient: Gradient(colors: [Color.red, Color.blue]),
//                    startPoint: .topLeading,
//                    endPoint: .bottomTrailing)
//                RadialGradient(
//                    gradient: Gradient(colors: [Color.red, Color.blue]),
//                    center: .center,
//                    startRadius: 50,
//                    endRadius: 200)
                AngularGradient(
                    gradient: Gradient(colors: [Color.red, Color.orange]),
                    center: .topLeading,
                    angle: .degrees(0))
            )
            .frame(width: 300, height: 200)
    }
}

struct Gradients_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Gradients_Bootcamp()
    }
}
