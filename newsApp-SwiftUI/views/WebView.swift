//
//  WebView.swift
//  newsApp-SwiftUI
//
//  Created by mazen moataz on 10/10/2021.
//

import Foundation
import WebKit
import SwiftUI

struct WebView:UIViewRepresentable{
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    let url: String?
   
   
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let stringUrl = url {
            if let Url = URL(string: stringUrl){
                let request = URLRequest(url: Url)
                uiView.load(request)
            }
        }
    }
}
