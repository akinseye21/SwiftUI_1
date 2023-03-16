//
//  ColorPicker_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 2/6/23.
//

import SwiftUI

struct ColorPicker_Bootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    
    var body: some View {
        ZStack{
            backgroundColor.ignoresSafeArea()
            
            ColorPicker("Select a color",
                        selection: $backgroundColor,
                        supportsOpacity: true)
            .padding()
            .background(Color.black)
            .cornerRadius(20)
            .foregroundColor(Color.white)
            .padding()
        }
    }
}

struct ColorPicker_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorPicker_Bootcamp()
    }
}
