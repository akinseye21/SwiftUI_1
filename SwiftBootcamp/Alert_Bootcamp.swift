//
//  Alert_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 2/6/23.
//

import SwiftUI

struct Alert_Bootcamp: View {
    
    @State var showAlert: Bool = false
    @State var alertType: myAlert? = nil
    //@State var alertTitle: String = ""
    //@State var alertMessage: String = ""
    @State var changeBg: Color = Color.green
    
    enum myAlert{
        case success
        case error
    }
    
    var body: some View {
        ZStack{
            changeBg.ignoresSafeArea()
            
            VStack {
                Button("Click me") {
                    alertType = .error
                    //alertTitle = "Error 404 😔"
                    //alertMessage = "Sorry upload was not successful"
                    showAlert.toggle()
                }
                
                Button("Click me2") {
                    alertType = .success
                    //alertTitle = "Success 😁"
                    //alertMessage = "Your upload successful"
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert) {
                getAlert()
            }
            
        }
        
    }
    
    
    func getAlert() -> Alert{
        switch alertType{
        case .error:
            return Alert(title: Text("Sorry Upload was not successful"))
        case .success:
            return Alert(title: Text("Your Upload was successful"))
        default:
            return Alert(title: Text(""))
        }
        
        
        
//        return Alert(
//            title: Text(alertTitle),
//            message: Text(alertMessage),
//            dismissButton: .default(Text("Ok"))
//        )
        
        //        return Alert(
        //            title: Text("Alert Dialog"),
        //            message: Text("You just clicked the button. Select actions below"),
        //            primaryButton: .destructive(
        //                Text("Change BG"),
        //                action: {
        //
        //                    if changeBg == Color.green{
        //                        changeBg = Color.white
        //                    }else if changeBg == Color.white{
        //                        changeBg = Color.green
        //                    }
        //
        //                }
        //            ),
        //            secondaryButton: .cancel(Text("Close")))
    }
}

struct Alert_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Alert_Bootcamp()
    }
}
