//
//  Model_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 3/1/23.
//

import SwiftUI

//enable model to conform to identifiable by adding an 'id'
struct UserModel: Identifiable {
    let id: String = UUID().uuidString //creates a random user id string
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct Model_Bootcamp: View {
    
    //creating array of usermodel
    @State var users: [UserModel] = [
        //"Akinseye", "Abayomi", "Emmanuel", "Rotimi"
        UserModel(displayName: "Akinseye", userName: "akinseye21", followerCount: 100, isVerified: true),
        UserModel(displayName: "Abayomi", userName: "itsAbayomi1995", followerCount: 55, isVerified: false),
        UserModel(displayName: "Emmanuel", userName: "Emma001", followerCount: 320, isVerified: true),
        UserModel(displayName: "Rotimi", userName: "RollerCoaster1223", followerCount: 90, isVerified: true)
    ]
    
    var body: some View {
        NavigationView {
            List{
                ForEach(users) { user in
                    HStack (spacing: 15) {
                        Circle()
                            .frame(width: 35, height: 35)
                        //Text(user.id)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        
                        if user.isVerified{
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        
                        VStack{
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
            .navigationTitle("Model Class")
        }
    }
}

struct Model_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Model_Bootcamp()
    }
}
