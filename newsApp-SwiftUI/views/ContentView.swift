//
//  ContentView.swift
//  newsApp-SwiftUI
//
//  Created by mazen moataz on 10/10/2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var netwrokManager = NetworkManager()
    var body: some View {
        NavigationView {
            List(netwrokManager.posts) { post in
                NavigationLink(
                    destination: DetailedPost(url: post.url)){
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                .navigationTitle("NewsApp")
            }.onAppear{
                self.netwrokManager.parseJson()
            }
        }
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro Max"))
        }
    }
    
}
