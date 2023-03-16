//
//  TapGesture_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 3/1/23.
//

import SwiftUI

struct TapGesture_Bootcamp: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack(spacing: 20, content: {
            RoundedRectangle(cornerRadius: 25)
                .frame(height: 200)
                .foregroundColor(isSelected ? Color.red : Color.yellow)
            
            Button {
                isSelected.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(.white)
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .cornerRadius(25)
            }
            
            //using onTapGesture
            Text("On Tap")
                .foregroundColor(.white)
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(.brown)
                .cornerRadius(25)
                .onTapGesture {
                    isSelected.toggle()
                }
            //on tap twice just like the like feature on instagram
            Text("On Tap Twice")
                .foregroundColor(.white)
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(.green)
                .cornerRadius(25)
                .onTapGesture (count: 2) {
                    isSelected.toggle()
                }

        })
        .padding(50)
    }
}

struct TapGesture_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TapGesture_Bootcamp()
    }
}
