//
//  MyWebview.swift
//  SwiftUI-Demo1
//
//  Created by Tony Lee on 2021/6/22.
//

import Foundation
import SwiftUI
import WebKit

struct MyWebView : UIViewRepresentable{
  typealias UIViewType = WKWebView    
  
  func makeUIView(context: Context) -> WKWebView {
    let webView = WKWebView()
    if let url = URL(string: "https://www.google.com") {
      let request = URLRequest(url: url)
      webView.load(request)
    }
    return webView
  }
  
  func updateUIView(_ uiView: WKWebView, context: Context) {
    //
  }
  
  func myTest() {
  debugPrint("myTest")
  }
  
}
