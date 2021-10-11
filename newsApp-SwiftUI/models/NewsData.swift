//
//  NewsData.swift
//  newsApp-SwiftUI
//
//  Created by mazen moataz on 10/10/2021.
//

import Foundation
struct NewsData: Decodable{
    let hits : [post]
}
struct post: Identifiable,Decodable {
    var id : String {
        return objectID
    }
    let objectID : String
    let title : String
    let points : Int
    let url : String?
}


