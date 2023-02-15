//
//  MovieDetailScreen.swift
//  MovieApp
//
//  Created by Ahmad Aziz on 15/02/23.
//

import SwiftUI

struct MovieDetailScreen: View {
    
    let imdbId: String
    @ObservedObject var movieDetailVM = MovieDetailViewModel()
    
    var body: some View {
        VStack {
            
            if movieDetailVM.loadingState == .loading {
                LoadingView()
            } else if movieDetailVM.loadingState == .success {
                MovieDetailViewModel(movieDetail: movieDetailVM)
            } else if movieDetailVM.loadingState == .failed {
                FailedView()
            }
            
        }
    }
}
