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
          content
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
    .accentColor(colorScheme == .dark ? .white : Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)))
  }
  
  @Environment(\.colorScheme) var colorScheme: ColorScheme
}

private extension ContentView {
  var content: some View {
    VStack {
      ProfileRow()
      
      VStack {
        NavigationLink(destination: FAQView()) {
          MenuRow()
        }
        
        divider
        
        NavigationLink(destination: PackagesView()) {
          MenuRow(
            title: "SwiftUI Packages",
            leftIcon: "square.stack.3d.up.fill"
          )
        }
        
        divider
        
        Link(destination: URL(string: "https://www.youtube.com/channel/UCTIhfOopxukTIRkbXJ3kN-g")!) {
          MenuRow(
            title: "YouTube Channel",
            leftIcon: "play.rectangle.fill",
            rightIcon: "link"
          )
        }
      }
      .blurBackground()
      .padding(.top, 20)
      
      Text("Version 1.00")
        .foregroundColor(.white.opacity(0.7))
        .padding(.top, 20)
        .padding(.horizontal, 20)
        .padding(.bottom, 10)
        .font(.footnote)
    }
    .foregroundColor(.white)
    .padding(.top, 20)
    .padding(.horizontal, 20)
    .padding(.bottom, 10)
  }
}

private extension ContentView {
  var divider: some View {
    Divider()
      .background(.white)
      .blendMode(.overlay)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
