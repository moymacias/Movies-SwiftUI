//
//  MovieDetails.swift
//  Movies App
//
//  Created by Moy Macías on 02/05/22.
//

import SwiftUI

struct MovieDetails: View {
  @State private var animate = false
  
  var movie: Movie
  
  var body: some View {
    VStack(alignment: .center) {
      Poster(image: movie.image)
        .scaleEffect(animate ? 1 : 0.1)
        .animation(.default, value: animate)
      Text(movie.author)
        .foregroundColor(Color.gray)
        .padding(.top, 15.0)
      Text(movie.title)
        .font(.title3)
        .fontWeight(.semibold)
      Text(movie.description)
        .foregroundColor(Color.gray)
        .padding()
      HStack {
        Text(movie.genre[0])
          .fontWeight(.semibold)
          .padding(10)
          .overlay(
            RoundedRectangle(cornerRadius: 20)
              .stroke(Color.gray, lineWidth: 1)
          )
          .scaleEffect(animate ? 1 : 0.1)
          .rotationEffect(.degrees(animate ? 0: 180))
          .opacity(animate ? 1 : 0)
        Text(movie.genre[1])
          .fontWeight(.semibold)
          .padding(10)
          .overlay(
            RoundedRectangle(cornerRadius: 20)
              .stroke(Color.gray, lineWidth: 1)
          )
          .scaleEffect(animate ? 1 : 0.1)
          .rotationEffect(.degrees(animate ? 0: 180))
          .opacity(animate ? 1 : 0)
      }
      Divider()
        .padding()
      Button("Buy for $\(movie.price, specifier: "%.2f")") {
        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
      }
      .padding(20.0)
      .background(Color.black)
      .foregroundColor(.white)
      .clipShape(Capsule())
    }
    .onAppear {
      withAnimation {
        animate.toggle()
      }
    }
  }
}

struct MovieDetails_Previews: PreviewProvider {
  static var previews: some View {
    MovieDetails(movie: moviesData[0])
  }
}
