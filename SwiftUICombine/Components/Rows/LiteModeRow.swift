//
//  NotificationsRow.swift
//  SwiftUICombine
//
//  Created by Алексей Гузь on 19.03.2022.
//

import SwiftUI

struct LiteModeRow: View {
  @State
  private var subscribed: Bool = true
  
  var body: some View {
    Toggle(isOn: $subscribed) {
      HStack(spacing: 12) {
        GradientIcon(icon: "speedometer")
        
        VStack(alignment: .leading) {
          Text("Lite Mode")
            .font(.subheadline)
            .fontWeight(.semibold)
          
          Text("Better performance. Recommended for iPhone X and older.")
            .font(.caption2)
            .opacity(0.7)
        }
      }
    }
    .toggleStyle(SwitchToggleStyle(tint: Color(#colorLiteral(red: 0.3450980392, green: 0.337254902, blue: 0.8392156863, alpha: 1))))
  }
}

struct LiteModeRow_Previews: PreviewProvider {
  static var previews: some View {
    LiteModeRow()
  }
}
