//
//  Binding_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 1/25/23.
//

import SwiftUI

struct Binding_Bootcamp: View {
    
    @State var background: Color = Color.green
    @State var title: String = "Title"
    @State var buttonColor: Color = Color.yellow
    
    var body: some View {
        ZStack{
            //Background
            background.ignoresSafeArea()
            
            //VStack
            ExtractedView1(background: $background, title: $title, buttonColor: $buttonColor)
        }
    }
}

struct Binding_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Binding_Bootcamp()
    }
}

struct ExtractedView1: View {
    
    @Binding var background: Color
    @Binding var title: String
    @Binding var buttonColor: Color
    
    var body: some View {
        VStack{
            Text(title)
                .font(.largeTitle)
            Button {
                background = Color.yellow
                buttonColor = Color.blue
                title = "Button Clicked"
            } label: {
                Text("Button")
                    .foregroundColor(Color.white)
                    .padding()
                    .padding(.horizontal)
                    .background(
                        buttonColor
                            .cornerRadius(10)
                    )
            }
            
        }
    }
}
