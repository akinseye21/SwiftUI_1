//
//  ForEach_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 1/18/23.
//

import SwiftUI

struct ForEach_Bootcamp: View {
    
    let data: [String] = ["Faculty", "School", "Department", "Hostel"]
    let myString: String = "Hello"
    
    var body: some View {
        VStack{
//            ForEach(0..<10){ index in
//                Text("Hello index \(index)")
//            }
            
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index)")
            }
        }
    }
}

struct ForEach_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEach_Bootcamp()
    }
}
