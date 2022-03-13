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
  
  func blurBackground() -> some View {
    self.padding(16)
      .background(Color("Background 1"))
      .background(VisualEffectBlur(blurStyle: .systemUltraThinMaterialDark))
      .overlay(
        RoundedRectangle(
          cornerRadius: 20,
          style: .continuous
        )
          .stroke(.white, lineWidth: 1)
          .blendMode(.overlay)
      )
      .mask(RoundedRectangle(cornerRadius: 20, style: .continuous))
  }
}
