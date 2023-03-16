//
//  ExtractedFunction_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 1/24/23.
//

import SwiftUI

struct ExtractedFunction_Bootcamp: View {
    
    @State var backgroundColor: Color = Color.brown
    @State var myTitle: String = "Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack{
            //background
            backgroundColor
                .ignoresSafeArea()
            
            //content
            contentLayer
        }
    }
    
    
    
    
    
    var contentLayer: some View{
        VStack(spacing: 20){
            Text(myTitle)
                .font(.headline)
            
            Text("Count \(count)")
                .underline()
                .font(.body)
            
            HStack(spacing: 20){
                Button("BUTTON 1") {
                    button1Pressed()
                }
                
                Button("BUTTON 2") {
                    button2Pressed()
                }
            }
        }
        .foregroundColor(Color.white)
    }
    
    
    
    
    
    
    
    
    func button1Pressed(){
        backgroundColor = Color.green
        myTitle = "Button 1 Title"
        count = count + 1
    }
    
    
    
    
    
    func button2Pressed(){
        backgroundColor = Color.yellow
        myTitle = "Button 2 Title"
        count = count - 1
    }
}

struct ExtractedFunction_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunction_Bootcamp()
    }
}
