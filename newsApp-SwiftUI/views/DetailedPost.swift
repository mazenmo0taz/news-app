//
//  DetailedPost.swift
//  newsApp-SwiftUI
//
//  Created by mazen moataz on 10/10/2021.
//

import SwiftUI

struct DetailedPost: View {
    var url : String?
    var body: some View {
        WebView(url: url)
    }
}

struct DetailedPost_Previews: PreviewProvider {
    static var previews: some View {
        DetailedPost(url: "https://google.com").previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro Max"))
    }
}
