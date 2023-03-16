//
//  TextFields_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 2/6/23.
//

import SwiftUI

struct TextFields_Bootcamp: View {
    
    @State var username: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationView{
            VStack{
                TextField("Type something here", text: $username)
                    //.textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray)
                    .cornerRadius(10)
                    .foregroundColor(Color.white)
                    .font(.headline)
                    
                Button {
                    if textIsAppropriate(){
                        saveText()
                    }
                } label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAppropriate() ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        .foregroundColor(Color.white)
                        .font(.headline)
                }
                .disabled(!textIsAppropriate())
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                
                Spacer()

            }
            .padding()
            .navigationTitle("TextField Example")
        }
    }
    
    func textIsAppropriate() -> Bool{
        //check text
        if username.count >= 3{
            return true
        }
        return false
    }
    
    func saveText(){
        dataArray.append(username)
        username = ""
    }
}

struct TextFields_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFields_Bootcamp()
    }
}
