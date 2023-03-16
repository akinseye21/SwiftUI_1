//
//  State_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 1/24/23.
//

import SwiftUI

struct State_Bootcamp: View {
    
    @State var backgroundColor: Color = Color.brown
    @State var myTitle: String = "Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack{
            //background
            backgroundColor
                .ignoresSafeArea()
            
            //content
            VStack(spacing: 20){
                Text(myTitle)
                    .font(.headline)
                
                Text("Count \(count)")
                    .underline()
                    .font(.body)
                
                HStack(spacing: 20){
                    Button("BUTTON 1") {
                        backgroundColor = Color.green
                        myTitle = "Button 1 Title"
                        count = count + 1
                    }
                    
                    Button("BUTTON 2") {
                        backgroundColor = Color.yellow
                        myTitle = "Button 2 Title"
                        count = count - 1
                    }
                }
            }
            .foregroundColor(Color.white)
            
        }
    }
}

struct State_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        State_Bootcamp()
    }
}
