//
//  ActionSheet_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 2/6/23.
//

import SwiftUI

struct ActionSheet_Bootcamp: View {
    
    @State var showActionSheet: Bool = false
    
    var body: some View {
        Button("Click me") {
            showActionSheet.toggle()
        }
        .actionSheet(isPresented: $showActionSheet) {
            getActionSheet()
        }
    }
    
    func getActionSheet() -> ActionSheet {
        
        let button1: ActionSheet.Button = .default(Text("Default Button 1"))
        let button2: ActionSheet.Button = .destructive(Text("Desctructive Button 1"))
        let button3: ActionSheet.Button = .default(Text("Default Button 2"))
        let button4: ActionSheet.Button = .destructive(Text("Destructive Button 2"))
        let button5: ActionSheet.Button = .cancel(Text("Close"))
        
        return ActionSheet(
            title: Text("Select a button"),
            buttons: [button1, button2, button3, button4, button5])
    }
}

struct ActionSheet_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheet_Bootcamp()
    }
}
