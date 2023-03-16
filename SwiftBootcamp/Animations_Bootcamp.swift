//
//  Animations_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 1/26/23.
//

import SwiftUI

struct Animations_Bootcamp: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack{
            Button("Button \(isAnimated.description)") {
                withAnimation(.default.delay(1)){
                    isAnimated.toggle()
                }
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.yellow : Color.blue)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300
                )
                .offset(y: isAnimated ? 300 : 0)
            Spacer()
        }
    }
}

struct Animations_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Animations_Bootcamp()
    }
}
