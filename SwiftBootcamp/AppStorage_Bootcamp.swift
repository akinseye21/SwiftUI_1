//
//  AppStorage_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 3/6/23.
//

import SwiftUI

struct AppStorage_Bootcamp: View {
    
    //creates a storage data for a variable like the shared preference in android studio
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            //unwrapping the username if not initially assigned a value
            Text(currentUserName ?? "Add name here")
            
            Button {
                let name: String = "Yomi"
                currentUserName = name
            } label: {
                Text("Save")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 30)
                    .background(.blue)
                    .cornerRadius(30)
            }

        }
    }
}

struct AppStorage_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorage_Bootcamp()
    }
}
