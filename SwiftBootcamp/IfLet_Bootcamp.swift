//
//  IfLet_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 3/1/23.
//

import SwiftUI

struct IfLet_Bootcamp: View {
    
    //change currentUserID to any string
    @State var currentUserID: String? = "Yummy"
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationView {
            VStack{
                Text("Practising safe coding")
                
                if let text = displayText{
                    Text(text)
                        .font(.title)
                }
                
                if isLoading{
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Safe coding")
            .onAppear {
                loadData()
            }
        }
    }
    
    func loadData() {
        if let userID = currentUserID{
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                displayText = "This is the new userID \(userID)"
                isLoading = false
            }
        }else{
            displayText = "Error, there is no user ID"
        }
    }
}

struct IfLet_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IfLet_Bootcamp()
    }
}
