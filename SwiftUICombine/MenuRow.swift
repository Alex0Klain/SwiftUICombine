//
//  MenuRow.swift
//  SwiftUICombine
//
//  Created by Алексей Гузь on 19.02.2022.
//

import SwiftUI

public struct MenuRow: View {
  public var title: String = "FAQ / Contact"
  public var leftIcon: String = "questionmark"
  public var rightIcon: String = "chevron.right"
  
  public var body: some View {
    HStack(spacing: 12.0) {
      GradientIcon(icon: leftIcon)
      
      Text(title)
        .font(.subheadline)
        .fontWeight(.semibold)
      
      Spacer()
      
      Image(systemName: rightIcon)
        .font(.system(size: 15, weight: .semibold))
        .opacity(0.3)
    }
    .frame(maxWidth: .infinity, alignment: .leading)
  }
}
