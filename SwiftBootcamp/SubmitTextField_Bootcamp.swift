//
//  SubmitTextField_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 3/7/23.
//

import SwiftUI

struct SubmitTextField_Bootcamp: View {
    
    @State var username: String = ""
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack(spacing: 30){
            TextField("Enter name", text: $username)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.gray.opacity(0.3))
                .cornerRadius(10)
                .font(.headline)
                .foregroundColor(.black)
                .padding(.horizontal)
                .submitLabel(.next)                     // different labels
            
            TextField("Enter email", text: $email)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.gray.opacity(0.3))
                .cornerRadius(10)
                .font(.headline)
                .foregroundColor(.black)
                .padding(.horizontal)
                .submitLabel(.route)
            
            TextField("Enter password", text: $password)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.gray.opacity(0.3))
                .cornerRadius(10)
                .font(.headline)
                .foregroundColor(.black)
                .padding(.horizontal)
                .submitLabel(.send)
        }
        
    }
}

struct SubmitTextField_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SubmitTextField_Bootcamp()
    }
}
