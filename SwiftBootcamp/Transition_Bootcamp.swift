//
//  Transition_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 1/28/23.
//

import SwiftUI

struct Transition_Bootcamp: View {
    
    @State var update: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom){
            VStack{
                Button {
                    update.toggle()
                } label: {
                    Text("Button")
                }
            
                Spacer()
                
            }
            
            if update{
                RoundedRectangle(cornerRadius: 20)
                    .frame(maxWidth: .infinity, maxHeight: 500)
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: AnyTransition.opacity.animation(.spring(response: 1.5, dampingFraction: 2.0, blendDuration: 0.9))))
            }
            
            
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

struct Transition_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Transition_Bootcamp()
    }
}
