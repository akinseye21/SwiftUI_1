//
//  ExtractedSubview_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 1/24/23.
//

import SwiftUI

struct ExtractedSubview_Bootcamp: View {
    var body: some View {
        ZStack{
            Color.white
                .ignoresSafeArea()
            
            extractedBody
            
        }
    }
    
    
    var extractedBody: some View{
        HStack{
            ExtractedView(MyText: "Yomi", MyScore: 80, MyColor: Color.yellow)
            ExtractedView(MyText: "Jamiu", MyScore: 50, MyColor: Color.brown)
            ExtractedView(MyText: "Solomon", MyScore: 66, MyColor: Color.green)
        }
    }
}




struct ExtractedSubview_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedSubview_Bootcamp()
    }
}





struct ExtractedView: View {
    
    @State var MyText: String
    @State var MyScore: Int
    @State var MyColor: Color
    
    var body: some View {
        VStack{
            Text(MyText)
                .font(.headline)
            
            Text("\(MyScore)")
                .font(.body)
        }
        .padding()
        .background(
            Rectangle()
                .fill(MyColor)
                .cornerRadius(10)
        )
        .frame(height: 40)
        .shadow(radius: 10)
    }
}
