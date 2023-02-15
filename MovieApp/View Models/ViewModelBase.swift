//
//  ViewModelBase.swift
//  MovieApp
//
//  Created by Ahmad Aziz on 14/02/23.
//

import Foundation

enum LoadingState {
    case loading, success, failed, none
}

class ViewModelBase: ObservableObject {
    @Published var loadingState: LoadingState = .none
}
