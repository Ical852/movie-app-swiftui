//
//  FailedView.swift
//  MovieApp
//
//  Created by Ahmad Aziz on 14/02/23.
//

import SwiftUI

struct FailedView: View {
    var body: some View {
        VStack {
            Image(systemName: "exclamationmark.triangle.fill")
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
            
            Text("No Movie Found")
                .font(.largeTitle)
        }
        
    }
}

struct FailedView_Previews: PreviewProvider {
    static var previews: some View {
        FailedView()
    }
}
