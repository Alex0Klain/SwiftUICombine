//
//  Extensions.swift
//  SwiftUICombine
//
//  Created by Алексей Гузь on 13.03.2022.
//

import SwiftUI

extension View {
  func angularGradientGlow(colors: [Color]) -> some View {
    self.overlay(
      AngularGradient(
        gradient: Gradient(colors: colors),
        center: .center,
        angle: .degrees(0)
      )
    )
      .mask(self)
  }
  
  func linearGradientBackground(colors: [Color]) -> some View {
    self.overlay(
      LinearGradient(
        gradient: .init(colors: colors),
        startPoint: .topLeading,
        endPoint: .bottomTrailing
      )
    )
      .mask(self)
  }
}
