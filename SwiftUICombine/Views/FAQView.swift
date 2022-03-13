//
//  FAQView.swift
//  SwiftUICombine
//
//  Created by Алексей Гузь on 19.02.2022.
//

import SwiftUI

public struct FAQView: View {
  @State
  private var contentOffset = CGFloat(0)
  
  public var body: some View {
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
    .navigationTitle("FAQ")
    .font(.largeTitle)
    .background(
      Color("Background 2")
        .edgesIgnoringSafeArea(.all)
    )
  }
  
  var content: some View {
    VStack(alignment: .leading, spacing: 16) {
      ForEach(faqData, id: \.id) { faq in
        FAQRow(faq: faq)
      }
      
      Text("Have any question?")
        .frame(maxWidth: .infinity, alignment: .leading)
        .font(.subheadline)
        .opacity(0.7)
    }
    .padding(.horizontal, 20)
  }
}
