//
//  DarkMode_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 2/28/23.
//

import SwiftUI

struct DarkMode_Bootcamp: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView{
                VStack(spacing: 20, content: {
                    
                    Text("This color is PRIMARY")
                        .foregroundColor(.primary)
                    Text("This color is SECONDARY")
                        .foregroundColor(.secondary)
                    Text("This color is BLACK")
                        .foregroundColor(Color.black)
                    Text("This color is WHITE")
                        .foregroundColor(.white)
                    Text("This color is RED")
                        .foregroundColor(.red)
                    Text("This color is Globally Adaptive")
                        .foregroundColor(Color("AdaptiveColor"))
                    Text("This color is Locally Adaptive")
                        .foregroundColor(colorScheme == .light ? .blue : .brown)
                    
                })
            }
            .navigationTitle("Dark Mode Bootcamp")
        }
    }
}

struct DarkMode_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            DarkMode_Bootcamp()
                .preferredColorScheme(.light)
            DarkMode_Bootcamp()
                .preferredColorScheme(.dark)
        }
        
    }
}
