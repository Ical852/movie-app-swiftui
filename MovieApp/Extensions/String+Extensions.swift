//
//  String+Extensions.swift
//  MovieApp
//
//  Created by Ahmad Aziz on 14/02/23.
//

import Foundation

extension String {
    
    func trimmedAndEscaped() -> String {
        
        let trimmedString = self.trimmingCharacters(in:
                .whitespacesAndNewlines)
        return
            trimmedString
            .addingPercentEncoding(withAllowedCharacters:
            .urlHostAllowed) ?? self
        
    }
}
