//
//  Movie.swift
//  Movies App
//
//  Created by Moy Macías on 02/05/22.
//

import Foundation
import SwiftUI

struct Movie: Identifiable {
  var id: Int
  var title: String
  var price: Double
  var author: String
  var genre: [String]
  var description: String
  var isAvailable: Bool
  
  private var imageName: String
  var image: Image {
    Image(imageName)
  }
  
  init(id: Int, title: String, price: Double, author: String, genre: [String], description: String, isAvailable: Bool, imageName: String) {
    self.id = id
    self.title = title
    self.price = price
    self.author = author
    self.genre = genre
    self.description = description
    self.isAvailable = isAvailable
    self.imageName = imageName
  }
  
}
