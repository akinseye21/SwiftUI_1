//
//  Padding_Spacer_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 1/18/23.
//

import SwiftUI

struct Padding_Spacer_Bootcamp: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(Color.yellow)
//            //.padding()
//            .padding(.all, 5)
//            .padding(.leading, 20)
//            .background(Color.green)
        
        VStack(alignment: .leading){
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Text("This is the description of the text that we are going to be implementing the padding on and to see how this works.")
                .font(.callout)
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: Color.black.opacity(0.5),
                    radius: 10,
                    x: 0, y: 10
                )
        )
        .padding(.horizontal, 10)
        
    }
}

struct Padding_Spacer_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Padding_Spacer_Bootcamp()
    }
}
