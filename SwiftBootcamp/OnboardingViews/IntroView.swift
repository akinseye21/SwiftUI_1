//
//  IntroView.swift
//  SwiftBootcamp
//
//  Created by Yomi on 3/6/23.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack{
            //background
            RadialGradient(
                gradient: Gradient(colors: [Color.purple, Color.cyan]),
                center: .topLeading,
                startRadius: 1,
                endRadius: UIScreen.main.bounds.height
            )
            .ignoresSafeArea()
            
            //if user is signed in
            if currentUserSignedIn{
                //profile view
                UserProfileView()
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: .move(edge: .top)
                    ))
            }else{
                OnboardingView()
                    .transition(.asymmetric(
                        insertion: .move(edge: .top),
                        removal: .move(edge: .bottom)
                    ))
            }
            //profile view
            //else
            //onboarding view
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
