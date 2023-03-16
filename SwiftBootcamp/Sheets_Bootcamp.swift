//
//  Sheets_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 1/28/23.
//

import SwiftUI

struct Sheets_Bootcamp: View {
    
    @State var butClick: Bool = false
    
    var body: some View {
        ZStack{
            //background
            Color.green
                .ignoresSafeArea()
            
            VStack{
                Button {
                    butClick.toggle()
                } label: {
                    Text("Button")
                        .foregroundColor(Color.green)
                        .padding(20)
                        .background {
                            Color.white
                                .cornerRadius(10)
                        }
                }

            }
            
            .sheet(isPresented: $butClick) {
                // do not add conditional login here 
                secondscreen()
            }
        }
    }
}

struct secondscreen: View{
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading, content: {
            //background
            Color.yellow
                .ignoresSafeArea()
            
            VStack{
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "xmark")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .padding(EdgeInsets(top: 20, leading: 20, bottom: 0, trailing: 0))
                }
                
            }
        })
    }
    
}


struct Sheets_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Sheets_Bootcamp()
        //secondscreen()
    }
}
