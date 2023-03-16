//
//  TabView_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 2/7/23.
//

import SwiftUI

struct TabView_Bootcamp: View {
    
    @State var selectedTab: Int = 0
    
    var body: some View {
        TabView (selection: $selectedTab) {
            HomeView(selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            
            BrowserView()
                .tabItem {
                    Text("Browse")
                    Image(systemName: "globe")
                }
                .tag(1)
            
            ProfileView()
                .tabItem {
                    Text("Profile")
                    Image(systemName: "person.fill")
                }
                .tag(2)
            
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
                .tag(3)
        }
    }
}

struct TabView_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabView_Bootcamp()
    }
}

struct HomeView: View {
    
    @Binding var selectedTab: Int
    
    var body: some View {
        
        ZStack{
            Color.blue.ignoresSafeArea(edges: .top)
            
            VStack {
                Text("HOME TAB")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                
                Button {
                    selectedTab = 2
                } label: {
                    Text("Go to Profile")
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10)
                }

            }
        }
        
        
    }
}

struct BrowserView: View {
    var body: some View {
        ZStack{
            Color.blue.ignoresSafeArea(edges: .top)
            Text("BROWSER TAB")
        }
        
    }
}

struct ProfileView: View {
    var body: some View {
        ZStack{
            Color.blue.ignoresSafeArea(edges: .top)
            Text("PROFILE TAB")
        }
    }
}

struct SettingsView: View {
    var body: some View {
        ZStack{
            Color.blue.ignoresSafeArea(edges: .top)
            Text("SETTINGS TAB")
        }
    }
}
