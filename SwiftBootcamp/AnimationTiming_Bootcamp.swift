//
//  AnimationTiming_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 1/26/23.
//

import SwiftUI

struct AnimationTiming_Bootcamp: View {
    
    @State var isAnimating: Bool = false
    let duration: Double = 10
    
    var body: some View {
        VStack(spacing: 20){
            Button("Button") {
                isAnimating.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(
                    width: isAnimating ? 350 : 100,
                    height: isAnimating ? 100 : 100
                )
                .animation(.spring(response: 2.0,
                                   dampingFraction: 2.0,
                                   blendDuration: 1.0
                                   ))
            
            RoundedRectangle(cornerRadius: 20)
                .frame(
                    width: isAnimating ? 350 : 100,
                    height: isAnimating ? 100 : 100
                )
                .animation(.easeIn(duration: duration))
            
            RoundedRectangle(cornerRadius: 20)
                .frame(
                    width: isAnimating ? 350 : 100,
                    height: isAnimating ? 100 : 100
                )
                .animation(.easeOut(duration: duration))
            
            RoundedRectangle(cornerRadius: 20)
                .frame(
                    width: isAnimating ? 350 : 100,
                    height: isAnimating ? 100 : 100
                )
                .animation(.easeInOut(duration: duration))
            
        }
    }
}

struct AnimationTiming_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTiming_Bootcamp()
    }
}
