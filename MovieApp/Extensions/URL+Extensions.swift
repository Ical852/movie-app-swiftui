//
//  URL+Extensions.swift
//  MovieApp
//
//  Created by Ahmad Aziz on 12/02/23.
//

import Foundation

extension URL {
    
    static func forMoviesByImdbId(_ imdbId: String) -> URL? {
        return URL(string: "https://www.omdbapi.com/?i=\(imdbId)&apikey=\(Constants.API_KEY)")
    }
    
    static func forMoviesByName(_ name: String) -> URL? {
        return URL(string: "https://www.omdbapi.com/?s=\(name)&apikey=\(Constants.API_KEY)")
    }
    
}
