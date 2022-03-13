//
//  FAQ.swift
//  SwiftUICombine
//
//  Created by Алексей Гузь on 13.03.2022.
//

import Foundation

struct FAQ: Identifiable, Decodable {
  var id: Int
  var question: String
  var answer: String
}
