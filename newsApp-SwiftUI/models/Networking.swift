//
//  Networking.swift
//  newsApp-SwiftUI
//
//  Created by mazen moataz on 10/10/2021.
//

import Foundation

class NetworkManager : ObservableObject{
    @Published var posts : [post] = []
    func parseJson() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
                let task = session.dataTask(with: url) { data, response, error in
                    if let unWrapedError = error {
                        print(unWrapedError)
                    }else {
                        let decoder = JSONDecoder()
                        if let safeData = data {
                            do{
                                let decodedData = try decoder.decode(NewsData.self , from: safeData)
                                DispatchQueue.main.async {
                                    self.posts = decodedData.hits
                                }
                                
                            } catch {
                                print(error)
                            }
                        }
                    }
                }
            task.resume()
            }
        }
    }
  
