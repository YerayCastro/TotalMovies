//
//  Screens.swift
//  TotalMovies
//
//  Created by Yery Castro on 10/3/25.
//

import SwiftUI

enum Screens: Identifiable, CaseIterable {
    var id: Self { self }
    case movies
    case series
    
    @ViewBuilder
    var view: some View {
        switch self {
        case .movies:
            MoviesScreen()
        case .series:
            SeriesScreen()
        }
    }
    
    var image: String {
        switch self {
        case .movies:
            "film"
        case .series:
            "tv"
        }
    }
    var title: String {
        switch self {
        case .movies:
            "Movies"
        case .series:
            "Series"
        }
    }
}

