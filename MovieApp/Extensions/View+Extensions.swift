//
//  View+Extensions.swift
//  MovieApp
//
//  Created by Ahmad Aziz on 12/02/23.
//

import Foundation
import SwiftUI

extension View {
    func embedNavigationView() -> some View {
        return NavigationView { self }
    }
}
