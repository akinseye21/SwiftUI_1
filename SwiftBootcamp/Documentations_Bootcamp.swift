//
//  Documentations_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 2/28/23.
//

import SwiftUI

struct Documentations_Bootcamp: View {
    
    //MARK: VARIABLES
    /*
     This is the section where we have variables declared in the code
     the variables declared hels to show the type of variables
     durng initialization before using in the code
     */
    //To fold a block, use the combination 'option', 'command' and the 'left button'
    @State var showAlert: Bool = false
    @State var fruits: [String] = [
        "Apple", "Coconut", "Peaches", "Grapes", "Bananas"
    ]
    
    
    //MARK: BODY
    //This is the body of the code, where the code reading starts from
    var body: some View {
        NavigationView {
            ScrollView{
                VStack{
                    Text("Hello")
                    ForEach(fruits, id: \.self) { name in
                        Text(name)
                            .font(.headline)
                    }
                }
            }
            .navigationBarItems(
                trailing:Button("Alert", action: {
                showAlert.toggle()
                })
            )
            .navigationTitle("Documentation")
            .alert(isPresented: $showAlert) {
                getAlert(text: "This is the alert")
            }
        }
    }
    
    
    //MARK: FUNCTION
    /*
     This is the function for showing the dialog alert
     You can check my code in the Alert_Bootcamp file for more information on
     how to customize your dialog
     */
    func getAlert(text: String) -> Alert{
        return Alert(title: Text(text))
    }
}


    //MARK: PREVIEW
struct Documentations_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Documentations_Bootcamp()
    }
}
