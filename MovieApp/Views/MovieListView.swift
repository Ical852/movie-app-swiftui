//
//  MovieListView.swift
//  MovieApp
//
//  Created by Ahmad Aziz on 12/02/23.
//

import SwiftUI

struct MovieListView: View {
    
    let movies: [MovieViewModel]
    
    var body: some View {
        List(movies, id: \.imdbId) { movie in
            NavigationLink(destination: MovieDetailScreen(imdbId: movie.imdbId)) {
                MovieCell(movie: movie)
            }
        }
        .listStyle(PlainListStyle())
    }
}

struct MovieCell: View {
    let movie: MovieViewModel
    
    var body: some View {
        HStack(alignment: .top) {
            URLImage(url: movie.poster)
                .frame(width: 100, height: 120)
                .cornerRadius(6)
            
            VStack(alignment: .leading, spacing: 0.0) {
                Text(movie.title)
                    .font(.headline)
                
                Text(movie.year)
                    .opacity(0.5)
                    .padding(.top, 10)
            }.padding(5)
            
            Spacer()
        }.contentShape(Rectangle())
    }
}
