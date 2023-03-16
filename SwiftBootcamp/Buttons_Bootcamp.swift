//
//  Buttons_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 1/24/23.
//

import SwiftUI

struct Buttons_Bootcamp: View {
    
    @State var text: String = "Text Displayed"
    
    
    var body: some View {
        VStack (spacing: 20) {
            Text(text)
            Button("Press me") {
                if text == "Text Displayed"{
                    text = "Text Changed"
                }
                else{
                    text = "Text Displayed"
                }
            }
            .accentColor(Color.yellow)
            
            Button {
                text = "Button #2 was pressed"
            } label: {
                Text("Button 2".uppercased())
                    .font(.headline)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.red)
                            .padding(.horizontal, -20)
                            .frame(width: 100, height: 40)
                            .shadow(radius: 10)
                    )
                    .foregroundColor(Color.white)
            }
            
            Button {
                text = "Button #3 pressed"
            } label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color.brown)
                    )
            }
            
            Button {
                text = "Button #4 pressed"
            } label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .foregroundColor(Color.gray)
                    .bold()
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Capsule()
                            .stroke(Color.yellow, lineWidth: 2)
                    )
            }


        }
    }
}

struct Buttons_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Buttons_Bootcamp()
    }
}
