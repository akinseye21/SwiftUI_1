//
//  OnboardingView.swift
//  SwiftBootcamp
//
//  Created by Yomi on 3/6/23.
//

import SwiftUI



struct OnboardingView: View {
    //Onboarding state:
    /*
     0 - Welcome screen
     1 - Add name
     2 - Add age
     3 - Add gender
     */
    @State var onboardingState: Int = 0
    let transition: AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading)
    )
    
    // onboarding views
    @State var textFieldName: String = ""
    @State var textFieldAge: Int = 0
    @State var age: Double = 50
    @State var gender: String = ""
    
    // alerts
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    //app storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gebder") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack{
            //content layer
            ZStack{
                switch onboardingState{
                case 0:
                    welcomeView
                        .transition(transition)
                case 1:
                    nameView
                        .transition(transition)
                case 2:
                    ageView
                        .transition(transition)
                case 3:
                    genderView
                        .transition(transition)
                default:
                    welcomeView
                }
            }
            
            //buttons layer
            VStack{
                Spacer()
                bottomButton
            }
            .padding()
        }
        .alert(isPresented: $showAlert) {
            return Alert(title: Text(alertTitle))
        }
    }
    
    
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .background(.purple)
    }
}


// MARK: COMPONENT
extension OnboardingView{
    private var bottomButton: some View{
        Text(onboardingState == 0 ? "SIGN UP" :
                onboardingState == 3 ? "FINISH" :
                "NEXT")
            .font(.headline)
            .foregroundColor(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(.white)
            .cornerRadius(10)
            .animation(nil)
            .onTapGesture {
                handleNextButtonPressed()
            }
    }
    
    private var welcomeView: some View{
        VStack{
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            Text("Find your match")
                .font(.largeTitle)
                .foregroundColor(.white)
                .bold()
            Text("The #1 place to find matches for yourself, a friend or family friend. Please note, there should be no spamming in the course of chatting and beware of scammers")
                .font(.headline)
                .foregroundColor(.white)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .padding()
        }
    }
    
    private var nameView: some View{
        VStack{
            Text("What is your name?")
                .font(.largeTitle)
                .foregroundColor(.white)
                .bold()
            TextField("Enter name here", text: $textFieldName)
                .frame(height: 70)
                .frame(maxWidth: .infinity)
                .font(.headline)
                .foregroundColor(.purple)
                .padding(.horizontal)
                .background()
                .cornerRadius(10)
                .padding(.horizontal, 30)
        }
    }
    
    private var ageView: some View{
        VStack{
            Text("What is your age?")
                .font(.largeTitle)
                .foregroundColor(.white)
                .bold()
            //String(format: "%.0f", age)       format to 0 decimal point
            Text("\(String(format: "%.0f", age))")
                .font(.largeTitle)
                .fontWeight(.medium)
                .foregroundColor(.white)
                .padding(.top)
            Slider(value: $age, in: 18...100, step: 1)
                .accentColor(.white)
                .padding(.horizontal, 40)
        }
    }
    
    private var genderView: some View{
        VStack{
            Text("What is your gender?")
                .font(.largeTitle)
                .foregroundColor(.white)
                .bold()
            Picker(
                selection: $gender) {
                    Text("Male").tag("Male")
                    Text("Female").tag("Female")
                    Text("Non-Binary").tag("Non-Binary")
                } label: {
                    Text("Select a gender")
                }
                .pickerStyle(MenuPickerStyle())
                .foregroundColor(.white)
                .font(.headline)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.white)
                .cornerRadius(10)
                .padding(.horizontal, 30)
                .accentColor(.purple)

        }
    }
}


// MARK: FUNCTIONS
extension OnboardingView{
    
    func handleNextButtonPressed(){
        
        // check input
        switch onboardingState{
        case 1:
            guard textFieldName.count >= 3 else{
                showAlert(title: "Name must be at least 3 characters long! 😞")
                return
            }
            
        case 3:
            guard gender.count > 1 else{
                showAlert(title: "Please select a gender! 😁")
                return
            }
        default:
            break
        }
        
        //Goto next section
        if onboardingState == 3{
            //sign in
            signin()
        }else{
            withAnimation(.spring()){
                onboardingState += 1
            }
        }
    }
    
    //function to show alert
    func showAlert(title: String){
        alertTitle = title
        showAlert.toggle()
    }
    
    func signin(){
        currentUserName = textFieldName
        currentUserAge = Int(age)
        currentUserGender = gender
        withAnimation(.spring()){
            currentUserSignedIn = true
        }
    }
    
}
