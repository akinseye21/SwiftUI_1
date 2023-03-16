//
//  Ternary_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 1/26/23.
//

import SwiftUI

struct Ternary_Bootcamp: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack(spacing: 20){
            Button("Button \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            RoundedRectangle(cornerRadius: isStartingState ? 20 : 50)
                .fill(isStartingState ? Color.yellow : Color.blue)
                .frame(
                    width: isStartingState ? 200 : 100,
                    height: isStartingState ? 200 : 100
                )
        }
    }
}

struct Ternary_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Ternary_Bootcamp()
    }
}
