//
//  PageModel.swift
//  PinchApp(Gestures)
//
//  Created by Mehmet Ergün on 2023-02-24.
//

import Foundation

struct Page: Identifiable {
  let id: Int
  let imageName: String
}

extension Page {
  var thumbnailName: String {
    return "thumb-" + imageName
  }
}
