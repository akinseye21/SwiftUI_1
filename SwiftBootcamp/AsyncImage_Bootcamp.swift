//
//  AsyncImage_Bootcamp.swift
//  SwiftBootcamp
//
//  Created by Yomi on 3/7/23.
//

import SwiftUI

struct AsyncImage_Bootcamp: View {
    
    //load image directly from a url
    let url = URL(string: "https://random.imagecdn.app/500/150")
    var body: some View {
        VStack{
            AsyncImage(url: url) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .background(.white)
                    .shadow(radius: 100)
                    .cornerRadius(20)
            } placeholder: {
                ProgressView()
            }
            
            AsyncImage(url: url) { phase in
                switch phase{
                case .empty:
                    ProgressView()
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                case .failure:
                    Image(systemName: "questionmark")
                default:
                    Image(systemName: "questionmark")
                }
            }
        }
        
    }
}

struct AsyncImage_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImage_Bootcamp()
    }
}
