//
//  Stacks_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 1/17/23.
//

import SwiftUI

struct Stacks_Bootcamp: View {
    //VStack -> Vertical
    //HStack -> Horizontal
    //ZStack -> zIndex (back to front)
    var body: some View {
//        VStack{
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 100, height: 100)
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 100, height: 100)
//            Rectangle()
//                .fill(Color.blue)
//                .frame(width: 100, height: 100)
//        }
        
        VStack(alignment: .center, spacing: 0){
            Rectangle()
                .fill(Color.green)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 80, height: 80)
            Rectangle()
                .fill(Color.blue)
                .frame(width: 60, height: 60)
            
            ZStack{
                Circle()
                    .fill(Color.gray)
                    .frame(width: 60, height: 60)
                Text("1")
                    .font(.headline)
                    .foregroundColor(Color.white)
            }
        }
        
        
    }
}

struct Stacks_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Stacks_Bootcamp()
    }
}
