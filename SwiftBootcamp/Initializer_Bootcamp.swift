//
//  Initializer_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 1/18/23.
//

import SwiftUI

struct Initializer_Bootcamp: View {
    
    let backgroundColor: Color
    let count: Int
    let fruit: String
    
    init(count: Int, fruit: Fruit){
        self.count = count
        
        if fruit == .apple{
            self.fruit = "Apple"
            self.backgroundColor = .red
        }else{
            self.fruit = "Peaches"
            self.backgroundColor = .blue
        }
    }
    
    enum Fruit{
        case apple
        case peaches
    }
    
    var body: some View {
        VStack{
            Text("\(count)")
                .font(.largeTitle)
                .underline()
            Text(fruit)
                .font(.largeTitle)
        }
        .frame(width: 120, height: 120)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct Initializer_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Initializer_Bootcamp(count: 5, fruit: .peaches)
            Initializer_Bootcamp(count: 10, fruit: .apple)
        }
    }
}
