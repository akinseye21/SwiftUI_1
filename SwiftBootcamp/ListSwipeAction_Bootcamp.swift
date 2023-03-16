//
//  ListSwipeAction_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 3/7/23.
//

import SwiftUI

struct ListSwipeAction_Bootcamp: View {
    
    @State var fruits: [String] = [
        "apple", "banana", "peach", "mango", "orange"
    ]
    
    var body: some View {
        List{
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                    .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                        Button("Archive") {
                            
                        }
                        .tint(.red)
                        Button("Save") {
                            
                        }
                        .tint(.blue)
                        Button("Junk") {
                            
                        }
                        .tint(.black)
                    }
                
                    .swipeActions(edge: .leading, allowsFullSwipe: true) {
                        Button("Share") {
                            
                        }
                        .tint(.yellow)
                    }
            }
        }
    }
}

struct ListSwipeAction_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeAction_Bootcamp()
    }
}
