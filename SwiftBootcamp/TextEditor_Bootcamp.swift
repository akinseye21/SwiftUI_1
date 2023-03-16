//
//  TextEditor_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 2/6/23.
//

import SwiftUI

struct TextEditor_Bootcamp: View {
    
    @State var textEditorText: String = ""
    @State var savedText: String = ""
    
    var body: some View {
        NavigationView{
            VStack{
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .colorMultiply(Color.gray)
                    .cornerRadius(10)
                Button {
                    savedText = textEditorText
                } label: {
                    Text("save".uppercased())
                        .font(.body)
                        .foregroundColor(Color.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                
                Text(savedText)
                
                
                Spacer()

            }
            .navigationTitle("TextEditor Example")
            .padding()
        }
    }
}

struct TextEditor_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditor_Bootcamp()
    }
}
