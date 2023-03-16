//
//  ViewModel_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 3/5/23.
//

import SwiftUI

struct fruitModel: Identifiable{
    let id: String = UUID().uuidString
    let fruitName: String
    let fruitCount: Int
}

//the classs contains the data logic
//make the class conform to observable object
class FruitViewModel: ObservableObject{
    @Published var fruitArray: [fruitModel] = []
    @Published var isLoading: Bool = true
    
    init() {
        addFruit()
    }
    
    //function to add to the list view
    func addFruit(){
        let fruit1 = fruitModel(fruitName: "Orange", fruitCount: 9)
        let fruit2 = fruitModel(fruitName: "Mango", fruitCount: 7)
        let fruit3 = fruitModel(fruitName: "Banana", fruitCount: 3)
        let fruit4 = fruitModel(fruitName: "Peaches", fruitCount: 10)
        
        //to show delay for some seconds
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.fruitArray.append(fruit4)
            self.isLoading = false
        }
    }
    
    //function to delete a list
    func deleteFruit(index: IndexSet){
        fruitArray.remove(atOffsets: index)
    }
    
}

// the struct contains the view only for the UI
struct ViewModel_Bootcamp: View {
    /**
    @StateObject  ----> USE THIS ON CREATION / INITIALIZATION
    @ObservedObject ----> USE THIS FOR SUBVIEWS
     **/
    //using @StateObject will make the values in the fruitViewModel not to refresh
    //using @ObservedObject will make the values in the fruitViewModel to refresh
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List{
                
                if fruitViewModel.isLoading{
                    ProgressView()
                }else{
                    ForEach(fruitViewModel.fruitArray) { fruits in
                        HStack {
                            Text("\(fruits.fruitCount)")
                            Text(fruits.fruitName)
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
                
            }
            //remove the .onAppear else the array would multiply on load
            //.onAppear{fruitViewModel.addFruit()}
            .navigationTitle("Fruit List")
            .navigationBarItems(
                trailing: NavigationLink(
                    destination: RandomScreen(fruitViewModel: fruitViewModel),
                    label: {
                        Image(systemName: "arrow.right")
                    })
            )
        }
    }
}

struct RandomScreen: View {
    
    //using @ObservedObject when passing values tio the second screen
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View{
        ZStack{
            Color.white.ignoresSafeArea()
            VStack{
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.fruitName)
                        .font(.headline)
                        .padding(10)
                }
                
                Spacer()
            }
        }
    }
}

struct ViewModel_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModel_Bootcamp()
        //RandomScreen()
    }
}
