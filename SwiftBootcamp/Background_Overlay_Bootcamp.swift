//
//  Background_Overlay_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 1/17/23.
//

import SwiftUI

struct Background_Overlay_Bootcamp: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(
//                //Color(.red)
//                Circle()
//                    .fill(
//                        LinearGradient(
//                            gradient: Gradient(colors: [Color.red, Color.blue]),
//                            startPoint: .topLeading,
//                            endPoint: .bottomTrailing)
//                    )
//                    .frame(width: 100, height: 100, alignment: .center)
//
//            )
        
//        Rectangle()
//            .frame(width: 100, height: 100)
//            .overlay(
//                Rectangle()
//                    .fill(Color.blue)
//                    .frame(width: 50, height: 50)
//                , alignment: .center
//            )
//            .background(
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 150, height: 150)
//                , alignment: .center
//            )
        
        Image(systemName: "heart.fill")
            .foregroundColor(Color.white)
            .font(.headline)
            .background(
                Circle()
                    .fill(Color.red)
                    .shadow(color: .blue, radius: 20, x: 0, y: 10)
                    .frame(width: 60, height: 60)
                    .overlay(
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 20, height: 20)
                            .overlay(
                                Text("2")
                                    .font(.caption)
                                    .foregroundColor(Color.white)
                            )
                        , alignment: .bottomTrailing
                    )
            )
    }
}

struct Background_Overlay_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Background_Overlay_Bootcamp()
    }
}
