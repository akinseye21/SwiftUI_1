//
//  ProfileView.swift
//  SwiftBootcamp
//
//  Created by Yomi on 3/7/23.
//

import SwiftUI

struct UserProfileView: View {
    
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gebder") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        VStack (alignment: .center, spacing: 10){
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            HStack{
                Text("Username: ")
                Text( currentUserName ?? "Username" )
            }
            HStack {
                Text("Age: ")
                Text("\(currentUserAge ?? 0)")
            }
            HStack {
                Text("Gender: ")
                Text(currentUserGender ?? "Male")
            }
            
            Text("SIGN OUT")
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.black)
                .cornerRadius(10)
                .foregroundColor(.white)
                .font(.headline)
                .onTapGesture {
                    signout()
                }
        }
        .font(.title)
        .padding(20)
        .background(.white)
        .cornerRadius(10)
        .shadow(radius: 10)
        .foregroundColor(.purple)
    }
    
    func signout(){
        currentUserName = nil
        currentUserAge = nil
        currentUserGender = nil
        withAnimation(.spring()){
            currentUserSignedIn = false
        }
        
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
