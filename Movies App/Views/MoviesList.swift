//
//  MoviesList.swift
//  Movies App
//
//  Created by Moy Macías on 02/05/22.
//

import SwiftUI

struct MoviesList: View {
  var body: some View {
    GeometryReader { geometry in
      NavigationView {
        List(moviesData) { movie in
          NavigationLink {
            MovieDetails(movie: movie)
          } label: {
            MovieRow(movie: movie)
              .padding(.vertical)
          }
        }
        .frame(width: geometry.size.width * 1.05)
        .navigationTitle("Movies List")
      }
    }
  }
}

struct MoviesList_Previews: PreviewProvider {
  static var previews: some View {
    MoviesList()
  }
}
