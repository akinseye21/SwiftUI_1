//
//  ContextMenu_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 2/6/23.
//

import SwiftUI

struct ContextMenu_Bootcamp: View {
    
    @State var backgroundColor: Color = Color.blue
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Image(systemName: "house.fill")
                .font(.largeTitle)
            Text("Welcome to Switful Thinking")
                .font(.headline)
            Text("Description 1")
                .font(.subheadline)
        }
        .foregroundColor(Color.white)
        .padding(20)
        .background(backgroundColor)
        .cornerRadius(30)
        .contextMenu {
            Button {
                backgroundColor = Color.yellow
            } label: {
                Label("Share", systemImage: "flame.fill")
            }
            
            Button {
                backgroundColor = Color.green
            } label: {
                Text("Delete")
            }
            
            Button {
                backgroundColor = Color.brown
            } label: {
                HStack{
                    Text("Like")
                    Image(systemName: "heart.fill")
                }
            }



        }
    }
}

struct ContextMenu_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenu_Bootcamp()
    }
}
