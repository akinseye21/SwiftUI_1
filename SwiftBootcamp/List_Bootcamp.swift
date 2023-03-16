//
//  List_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 2/3/23.
//

import SwiftUI

struct List_Bootcamp: View {
    
    @State var fruits: [String] = [
        "apple", "banana", "peach", "mango", "orange"
    ]
    
    @State var veggies: [String] = [
        "carrot", "tomatoes", "lettuce", "spinach"
    ]
    
    var body: some View {
        NavigationView {
            List{
                Section(
                    header:
                        HStack {
                            Text("Fruits")
                                .foregroundColor(Color.blue)
                            Image(systemName: "heart.fill")
                                .foregroundColor(Color.blue)
                        }
                        .accentColor(Color.blue)
                ) {
                        ForEach(fruits, id: \.self) { fruit in
                            Text(fruit.capitalized)
                        }
                        .onDelete { indexSet in
                            delete(indexSet: indexSet)
                        }
                        .onMove { location, newOffset in
                            move(location: location, newOffset: newOffset)
                        }
                        .listRowBackground(Color.yellow)
                        .foregroundColor(Color.blue)
                    }
                
                Section(header: Text("Veggies")) {
                    ForEach(veggies, id: \.self) { veggies in
                        Text(veggies.capitalized)
                    }
                }
            }
            //.listStyle(GroupedListStyle())
            .navigationTitle("My App")
            .navigationBarItems(leading: EditButton(),trailing: addition)
        }
        .accentColor(Color.red)
        
    }
    
    
    var addition: some View{
        ZStack{
            Button("Add", action: {
                add()
            })
        }
    }
    
    func add(){
        fruits.append("Coconut")
    }
    
    func delete(indexSet: IndexSet){
        fruits.remove(atOffsets: indexSet)
    }
    func move(location: IndexSet, newOffset: Int){
        fruits.move(fromOffsets: location, toOffset: newOffset)
    }
}

struct List_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        List_Bootcamp()
    }
}
