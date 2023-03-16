//
//  Colors_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 12/28/22.
//

import SwiftUI

struct Colors_Bootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //Color.primary
                //Color(#colorLiteral(red:0, green:1, blue:2, alpha:1))
                //Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
            .shadow(color: Color.black, radius: 10, x: 10, y: 10)
    }
}

struct Colors_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Colors_Bootcamp()
            .preferredColorScheme(.light)
    }
}
