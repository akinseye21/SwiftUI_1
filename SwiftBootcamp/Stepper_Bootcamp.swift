//
//  Stepper_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 2/7/23.
//

import SwiftUI

struct Stepper_Bootcamp: View {
    
    @State var incrementValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper("Stepper \(incrementValue)", value: $incrementValue)
                .padding(70)
            
            RoundedRectangle(cornerRadius: 30.0)
                .frame(width: 100 + widthIncrement, height: 100)
            
            Stepper("Stepper 2") {
                //increment
                //widthIncrement = widthIncrement + 10
                incrementWidth(amount: 10)
            } onDecrement: {
                //decrement
                incrementWidth(amount: -10)
            }
            .padding(70)

        }
    }
    
    
    func incrementWidth(amount: CGFloat){
        withAnimation(.easeInOut) {
            widthIncrement = widthIncrement + amount
        }
    }
}

struct Stepper_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Stepper_Bootcamp()
    }
}
