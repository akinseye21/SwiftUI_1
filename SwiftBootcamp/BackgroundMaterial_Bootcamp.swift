//
//  BackgroundMaterial_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 3/7/23.
//

import SwiftUI

struct BackgroundMaterial_Bootcamp: View {
    var body: some View {
        VStack{
            Spacer()
            VStack {
                RoundedRectangle(cornerRadius: 40)
                    .frame(width: 60, height: 4)
                    .padding(.top, 30)
                Spacer()
                Text("9jatalks.org")
                    .textSelection(.enabled)            //text selection. The text can be copied
                    .foregroundColor(.white)
                    .font(.headline)
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            //.background(.thinMaterial)          //different material style
            //.background(.thickMaterial)
            //.background(.regularMaterial)
            .background(.ultraThinMaterial)
            .cornerRadius(40)
            
        }
        .background(
            Image("9jaTalks")
        )
        .ignoresSafeArea()
    }
}

struct BackgroundMaterial_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterial_Bootcamp()
    }
}
