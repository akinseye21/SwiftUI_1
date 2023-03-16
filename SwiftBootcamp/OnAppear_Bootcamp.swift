//
//  OnAppear_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 3/1/23.
//

import SwiftUI

struct OnAppear_Bootcamp: View {
    
    @State var myText: String = "Starting text"
    @State var count: Int = 0
    
    var body: some View {
        NavigationView {
            ScrollView{
                Text(myText)
                LazyVStack{
                    ForEach(0..<50){ index in
                        RoundedRectangle(cornerRadius: 20)
                            .frame(height: 200)
                            .padding()
                            .onAppear{
                                count += 1
                            }
                    }
                }
            }
            .onAppear(perform: {
                //This code helps in delay in swiftui
                DispatchQueue.main.asyncAfter(deadline: .now() + 5){
                    myText = "This is the new text"
                }
            })
            .navigationTitle("OnAppear \(count)")
        }
    }
}

struct OnAppear_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        OnAppear_Bootcamp()
    }
}
