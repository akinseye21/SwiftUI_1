//
//  Scrollviews_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 1/18/23.
//

import SwiftUI

struct Scrollviews_Bootcamp: View {
    var body: some View {
//        ScrollView(.vertical, showsIndicators: false) {
//            VStack{
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .fill(Color.green)
//                        .frame(height: 200)
//                }
//            }
//        }
        
        ScrollView{
            VStack(spacing: 10){
                ForEach(0..<100) { index in
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack{
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.gray)
                                    .frame(width: 100, height: 100)
                            }
                        }
                    }
                    
                }
                
            }
        }
        
    }
}

struct Scrollviews_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Scrollviews_Bootcamp()
    }
}
