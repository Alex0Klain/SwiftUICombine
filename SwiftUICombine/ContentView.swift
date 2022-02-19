//
//  ContentView.swift
//  SwiftUICombine
//
//  Created by Алексей Гузь on 19.02.2022.
//

import SwiftUI

struct ContentView: View {
  
  @State
  private var contentOffset = CGFloat(0)
  
  var body: some View {
    NavigationView {
      ZStack(alignment: .top) {
        TrackableScrollView(offsetChanged: { offsetPoint in
          contentOffset = offsetPoint.y
        }) {
          Text("Hello, world!")
        }
        
        VisualEffectBlur(blurStyle: .systemMaterial)
          .opacity(contentOffset < -16 ? 1 : 0)
          .animation(.easeIn, value: 0)
          .ignoresSafeArea()
          .frame(height: 0)
      }
      .frame(maxHeight: .infinity, alignment: .top)
      .background(AccountBackground())
      .navigationBarHidden(true)
    }
    .navigationViewStyle(StackNavigationViewStyle())
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
