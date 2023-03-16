//
//  Badges_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 3/7/23.
//

import SwiftUI

struct Badges_Bootcamp: View {
    var body: some View {
        TabView{
            Color.red
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Home")
                }
                .badge(5)           // adding badges
            
            Color.blue
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Home")
                }
                .badge(0)           // badges don't show when count = 0
            
            Color.orange
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Home")
                }
                .badge("New")       // you can use a string in a badge as well
        }
    }
}

struct Badges_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Badges_Bootcamp()
    }
}
