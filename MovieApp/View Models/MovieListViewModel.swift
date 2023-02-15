//
//  MovieListViewModel.swift
//  MovieApp
//
//  Created by Ahmad Aziz on 12/02/23.
//

import Foundation
import SwiftUI

class MoviewListViewModel: ViewModelBase {
    
    @Published var movies = [MovieViewModel]()
    let httpClient = HTTPClient()
    
    func searchByName(_ name: String) {
        
        if name.isEmpty {
            return
        }
        
        self.loadingState = .loading
        
        httpClient.getMoviesBy(search: name.trimmedAndEscaped()) { result in
            switch result {
                case .success(let movies):
                    if let movies = movies {
//                        self.movies = movies.map { MovieViewModel(movie: $0) } => tipe iterasi manual
                        DispatchQueue.main.async {
                            self.movies = movies.map(MovieViewModel.init)
                            self.loadingState = .success
                        }
                    }
                case .failure(let error):
                    print(error.localizedDescription)
                    DispatchQueue.main.async {
                        self.loadingState = .failed
                    }
            }
        }
        
    }
    
}

struct MovieViewModel {
    
    let movie: Movie
    
    var imdbId: String {
        movie.imdbId
    }
    
    var title: String {
        movie.title
    }
    
    var poster: String {
        movie.poster
    }
    
    var year: String {
        movie.year
    }
    
}
