//
//  Conditional_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 1/26/23.
//

import SwiftUI

struct Conditional_Bootcamp: View {
    
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(spacing: 20){
            Button("Button 1: \(isLoading.description)") {
                isLoading.toggle()
            }
            
            if isLoading == false{
                
            }
            
            if isLoading == true{
                ProgressView()
            }
        }
    }
}

struct Conditional_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Conditional_Bootcamp()
    }
}
