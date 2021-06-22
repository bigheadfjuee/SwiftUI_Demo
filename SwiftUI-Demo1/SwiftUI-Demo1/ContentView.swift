//
//  ContentView.swift
//  SwiftUI-Demo1
//
//  Created by Tony Lee on 2021/6/22.
//

import SwiftUI

struct ContentView: View {
  @State var isPlaying = true
  
  @State var myWebView = MyWebView()
  
    var body: some View {
        PlayButton(isPlaying: $isPlaying, myWebView: $myWebView)
        myWebView
    }
}

struct PlayButton: View {
  @Binding var isPlaying : Bool
  @Binding var myWebView : MyWebView
  
  var body: some View {
    Button (action: {
      isPlaying.toggle()
      myWebView.myTest()
    }, label: {
      Image(systemName: isPlaying ? "play.circle.fill" : "stop.circle.fill")
        .font( .system(size:50))
        .foregroundColor(isPlaying ? .green : .red)
      
        
    })
  }
  
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
