//
//  FocusedState_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 3/7/23.
//

import SwiftUI

struct FocusedState_Bootcamp: View {
    
    @FocusState var usernameInFocus: Bool
    @FocusState var passwordInFocus: Bool
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack(spacing: 20){
            
            TextField("Enter name", text: $username)
                .focused($usernameInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.gray.opacity(0.3))
                .cornerRadius(10)
                .font(.headline)
                .foregroundColor(.black)
                .padding(.horizontal)
            
            SecureField("Enter password", text: $password)
                .focused($passwordInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.gray.opacity(0.3))
                .cornerRadius(10)
                .font(.headline)
                .foregroundColor(.black)
                .padding(.horizontal)
            
            Button("SIGN UP 🚀") {
                if username.count > 3 && password.count > 6{
                    //sign up
                } else if username.count < 3{
                    usernameInFocus.toggle()
                    passwordInFocus = false
                }else{
                    passwordInFocus.toggle()
                    usernameInFocus = false
                }
            }
            
        }
        .padding()
    }
}

struct FocusedState_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FocusedState_Bootcamp()
    }
}
