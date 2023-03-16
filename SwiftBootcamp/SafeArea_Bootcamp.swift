//
//  SafeArea_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 1/24/23.
//

import SwiftUI

struct SafeArea_Bootcamp: View {
    var body: some View {
        ScrollView(showsIndicators: false, content: {
            Text("Netflix! App")
                .font(.largeTitle)
                .foregroundColor(Color.red)
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
            ForEach(0..<10) { index in
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.white)
                    .shadow(radius: 10)
                    .frame(width: 350, height: 150)
                    .padding()
            }
        })
        .background(
            Color.yellow
                //.edgesIgnoringSafeArea(.all) //old
                .ignoresSafeArea(edges: .all)
        )
    }
}

struct SafeArea_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeArea_Bootcamp()
    }
}
