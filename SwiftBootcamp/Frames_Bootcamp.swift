//
//  Frames_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 1/17/23.
//

import SwiftUI

struct Frames_Bootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(.green)
            .frame(
                width: 200,
                alignment: .center
            )
            .background(.brown)
            .frame(height: 200)
            .background(.yellow)
            .frame(maxWidth: .infinity)
            .background(.red)
            .frame(maxHeight: .infinity)
            .background(Color.purple)
    }
}

struct Frames_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Frames_Bootcamp()
    }
}
