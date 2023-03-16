//
//  Grid_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 1/18/23.
//

import SwiftUI

struct Grid_Bootcamp: View {
    
    let column: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil)
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(
                columns: column,
                alignment: .center,
                spacing: nil,
                pinnedViews: [.sectionHeaders],
                content: {
                    Section {
                        ForEach(0..<30) { Index in
                            Rectangle()
                                .frame(height: 150)
                        }
                    } header: {
                        Text("Section 1")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.yellow)
                            .padding()
                    }
                    
                    Section {
                        ForEach(0..<30) { Index in
                            Rectangle()
                                .frame(height: 150)
                        }
                    } header: {
                        Text("Section 2")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.green)
                            .padding()
                    }
                }
            )
//            {
                
//                Image(systemName: "folder")
//                    .foregroundColor(Color.red)
//                Image(systemName: "xmark")
//                    .foregroundColor(Color.red)
//                Image(systemName: "house")
//                    .background(
//                        Circle()
//                            .fill(Color.red)
//                            .frame(width: 60, height: 60)
//                    )
//                    .foregroundColor(Color.white)
//                Image(systemName: "paperplane")
//                    .foregroundColor(Color.red)
//                Image(systemName: "cloud.bolt")
//                    .foregroundColor(Color.red)
                
    //            Rectangle()
    //            Rectangle()
    //            Rectangle()
                
//            }
        }
//        .ig noresSafeArea()
    }
}

struct Grid_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Grid_Bootcamp()
    }
}
