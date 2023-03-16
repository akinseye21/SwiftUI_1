//
//  Spacer_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 1/18/23.
//

import SwiftUI

struct Spacer_Bootcamp: View {
    var body: some View {
        VStack {
            HStack{
                Image(systemName: "gear")
                    .font(.headline)
                Spacer()
                Image(systemName: "xmark")
                    .font(.headline)
            }
            
            Spacer()
            
            HStack{
                Spacer()
                Image(systemName: "heart")
                    .font(.headline)
                    .foregroundColor(Color.white)
                Spacer()
                Image(systemName: "heart.fill")
                    .font(.headline)
                    .foregroundColor(Color.white)
                Spacer()
                Image(systemName: "house")
                    .font(.headline)
                    .foregroundColor(Color.white)

                Spacer()
            }
            .background(Color.gray)
            .frame(height: 30)
            .background(Color.gray)
        }
    }
}

struct Spacer_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Spacer_Bootcamp()
    }
}
