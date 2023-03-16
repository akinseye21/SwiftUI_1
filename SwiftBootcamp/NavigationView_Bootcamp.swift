//
//  NavigationView_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 2/3/23.
//

import SwiftUI

struct NavigationView_Bootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView{
                Text("Hello World!")
                Text("Hello World!")
                Text("Hello World!")
                Text("Hello World!")
                Text("Hello World!")
                
                NavigationLink("Submit") {
                    secondScreen()
                }
            }
            .navigationTitle("Home Page")
            .navigationBarTitleDisplayMode(.automatic)
            //.navigationBarHidden(true)
            .navigationBarItems(
                leading:
                    NavigationLink(
                    destination: secondScreen(),
                    label: {
                        Image(systemName: "person.fill")
                })
                .accentColor(Color.red),
                trailing:
                    NavigationLink(
                        destination: secondScreen(),
                        label: {
                            Image(systemName: "gear")
                    })
                    .accentColor(Color.red)
            )
        }
        
    }
}

struct secondScreen: View {
    var body: some View {
        ZStack{
            Text("Welcome to screen 2")
                .font(.largeTitle)
        }
        //.navigationBarHidden(true)
    }
}

struct NavigationView_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView_Bootcamp()
    }
}
