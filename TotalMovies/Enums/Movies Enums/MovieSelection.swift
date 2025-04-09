//
//  MovieSelection.swift
//  TotalMovies
//
//  Created by Yery Castro on 9/3/25.
//

import SwiftUI

enum MovieSelection {
    case allMovies(AllMovies)
    case upComingMovies(UpcomingMovies)
    case topRatedMovies(TopRatedMovies)

    var id: Int {
        switch self {
        case .allMovies(let movie):
            return movie.id
        case .upComingMovies(let movie):
            return movie.id
        case .topRatedMovies(let movie):
            return movie.id
        }
    }

    var adult: Bool {
        switch self {
        case .allMovies(let movie):
            return movie.adult
        case .upComingMovies(let movie):
            return movie.adult
        case .topRatedMovies(let movie):
            return movie.adult
        }
    }

    var backdropPath: String? {
        switch self {
        case .allMovies(let movie):
            return movie.backdropPath
        case .upComingMovies(let movie):
            return movie.backdropPath
        case .topRatedMovies(let movie):
            return movie.backdropPath
        }
    }

    var genreIDS: [Int] {
        switch self {
        case .allMovies(let movie):
            return movie.genreIDS
        case .upComingMovies(let movie):
            return movie.genreIds
        case .topRatedMovies(let movie):
            return movie.genreIDS
        }
    }

    var originalLanguage: String {
        switch self {
        case .allMovies(let movie):
            return movie.originalLanguage
        case .upComingMovies(let movie):
            return movie.originalLanguage
        case .topRatedMovies(let movie):
            return movie.originalLanguage
        }
    }

    var originalTitle: String {
        switch self {
        case .allMovies(let movie):
            return movie.originalTitle
        case .upComingMovies(let movie):
            return movie.originalTitle
        case .topRatedMovies(let movie):
            return movie.originalTitle
        }
    }

    var overview: String {
        switch self {
        case .allMovies(let movie):
            return movie.overview
        case .upComingMovies(let movie):
            return movie.overview
        case .topRatedMovies(let movie):
            return movie.overview
        }
    }

    var popularity: Double {
        switch self {
        case .allMovies(let movie):
            return movie.popularity
        case .upComingMovies(let movie):
            return movie.popularity
        case .topRatedMovies(let movie):
            return movie.popularity
        }
    }

    var posterPath: String? {
        switch self {
        case .allMovies(let movie):
            return movie.posterPath
        case .upComingMovies(let movie):
            return movie.posterPath
        case .topRatedMovies(let movie):
            return movie.posterPath
        }
    }

    var releaseDate: String {
        switch self {
        case .allMovies(let movie):
            return movie.releaseDate
        case .upComingMovies(let movie):
            return movie.releaseDate
        case .topRatedMovies(let movie):
            return movie.releaseDate
        }
    }

    var title: String {
        switch self {
        case .allMovies(let movie):
            return movie.title
        case .upComingMovies(let movie):
            return movie.title
        case .topRatedMovies(let movie):
            return movie.title
        }
    }

    var video: Bool {
        switch self {
        case .allMovies(let movie):
            return movie.video
        case .upComingMovies(let movie):
            return movie.video
        case .topRatedMovies(let movie):
            return movie.video
        }
    }

    var voteAverage: Double {
        switch self {
        case .allMovies(let movie):
            return movie.voteAverage
        case .upComingMovies(let movie):
            return movie.voteAverage
        case .topRatedMovies(let movie):
            return movie.voteAverage
        }
    }

    var voteCount: Int {
        switch self {
        case .allMovies(let movie):
            return movie.voteCount
        case .upComingMovies(let movie):
            return movie.voteCount
        case .topRatedMovies(let movie):
            return movie.voteCount
        }
    }

    var fullPosterURL: URL? {
        switch self {
        case .allMovies(let movie):
            return movie.fullPosterURL
        case .upComingMovies(let movie):
            return movie.fullPosterURL
        case .topRatedMovies(let movie):
            return movie.fullPosterURL
        }
    }
}
