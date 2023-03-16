//
//  EnvironmentObject_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 3/6/23.
//

import SwiftUI

//ObservedObject
//StateObject
//EnvironmentObject

class EnvironmentViewModel: ObservableObject{
    @Published var dataArray: [String] = []
    
    init(){
        getData()
    }
    
    func getData(){
        self.dataArray.append(contentsOf: ["iPhone", "iPad", "iMac", "Apple Watch", "Apple TV"])
    }
}


//UI screen 1
struct EnvironmentObject_Bootcamp: View {
    
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView {
            List{
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink {
                        DetailView(selectedItem: item)
                    } label: {
                        Text(item)
                    }

                }
            }
            .navigationTitle("iOS Devices")
        }
        //creating an environmentObject like a global data accessible anywhere within the code
        .environmentObject(viewModel)
    }
}

//UI screen 2
struct DetailView: View {
    
    let selectedItem: String
    
    var body: some View{
        ZStack{
            //background
            Color.orange.ignoresSafeArea()
            
            NavigationLink {
                FinalView()
            } label: {
                Text(selectedItem)
                    .font(.headline)
                    .padding(20)
                    .foregroundColor(.orange)
                    .background(.white)
                    .cornerRadius(25)
            }
            
        }
    }
}


//UI screen 3
struct FinalView: View {
    
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View{
        ZStack{
            //background
            LinearGradient(
                gradient: Gradient(colors: [Color.red, Color.orange]),
                startPoint: .topLeading,
                endPoint: .bottomLeading
            )
            .ignoresSafeArea()
            
            //views
            VStack {
                ForEach(viewModel.dataArray, id: \.self) { items in
                    Text(items)
                        .font(.headline)
                        .foregroundColor(.white)
                }
            }
            
        }
    }
}

struct EnvironmentObject_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObject_Bootcamp()
        //DetailView(selectedItem: "Greed")
        //FinalView()
    }
}
