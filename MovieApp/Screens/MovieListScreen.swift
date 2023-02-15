//
//  MovieListScreen.swift
//  MovieApp
//
//  Created by Ahmad Aziz on 12/02/23.
//

import SwiftUI

struct MovieListScreen: View {
    
    @ObservedObject private var movieListVM: MoviewListViewModel
    @State private var movieName: String = ""
    
    init() {
        self.movieListVM = MoviewListViewModel()
    }
    
    var body: some View {
        VStack {
            
            TextField("Search",
                text: $movieName,
                onEditingChanged: { _ in },
                onCommit: {
                    self.movieListVM.searchByName(self.movieName)
                }
            )
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding(.horizontal)
            .navigationBarTitle("Movies")
            
            Spacer()
            
            if self.movieListVM.loadingState == .success {
                MovieListView(movies: self.movieListVM.movies)
            } else if self.movieListVM.loadingState == .failed {
                FailedView()
            } else if self.movieListVM.loadingState == .loading {
                LoadingView()
            }
            
            Spacer()
            
        }
        .embedNavigationView()
    }
}

struct MovieListScreen_Previews: PreviewProvider {
    static var previews: some View {
        MovieListScreen()
    }
}
