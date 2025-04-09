//
//  SeriesSelection.swift
//  TotalMovies
//
//  Created by Yery Castro on 11/3/25.
//

import SwiftUI

enum SeriesSelection {
    case allSeries(AllSeries)
    case topRatedSeries(TopRatedSeries)
    case popularSeries(PopularSeries)
    
    var id: Int {
        switch self {
        case .allSeries(let serie):
            return serie.id
        case .topRatedSeries(let serie):
            return serie.id
        case .popularSeries(let serie):
            return serie.id
        }
    }
    var adult: Bool {
        switch self {
            case .allSeries(let serie):
            return serie.adult
        case .topRatedSeries(let serie):
            return serie.adult
        case .popularSeries(let serie):
            return serie.adult
        }
    }
    var backdropPath: String? {
        switch self {
        case .allSeries(let serie):
            return serie.backdropPath
        case .topRatedSeries(let serie):
            return serie.backdropPath
        case .popularSeries(let serie):
            return serie.backdropPath
        }
    }
    var genreIDS: [Int] {
        switch self {
        case .allSeries(let serie):
            return serie.genreIDS
        case .topRatedSeries(let serie):
            return serie.genreIDS
        case .popularSeries(let serie):
            return serie.genreIDS
        }
    }
    var originalLanguage: String {
        switch self {
        case .allSeries(let serie):
            return serie.originalLanguage
        case .topRatedSeries(let serie):
            return serie.originalLanguage
        case .popularSeries(let serie):
            return serie.originalLanguage
        }
    }
    var originalName: String {
        switch self {
        case .allSeries(let serie):
            return serie.originalName
        case .topRatedSeries(let serie):
            return serie.originalName
        case .popularSeries(let serie):
            return serie.originalName
        }
    }
    var overview: String {
        switch self {
        case .allSeries(let serie):
            return serie.overview
        case .topRatedSeries(let serie):
            return serie.overview
        case .popularSeries(let serie):
            return serie.overview
        }
    }
    var popularity: Double {
        switch self {
        case .allSeries(let serie):
            return serie.popularity
        case .topRatedSeries(let serie):
            return serie.popularity
        case .popularSeries(let serie):
            return serie.popularity
        }
    }
    var posterPath: String? {
        switch self {
        case .allSeries(let serie):
            return serie.posterPath
        case .topRatedSeries(let serie):
            return serie.posterPath
        case .popularSeries(let serie):
            return serie.posterPath
        }
    }
    var releaseDate: String {
        switch self {
        case .allSeries(let serie):
            return serie.firstAirDate
        case .topRatedSeries(let serie):
            return serie.firstAirDate
        case .popularSeries(let serie):
            return serie.firstAirDate
        }
    }
    var name: String {
        switch self {
        case .allSeries(let serie):
            return serie.name
        case .topRatedSeries(let serie):
            return serie.name
        case .popularSeries(let serie):
            return serie.name
        }
    }
    var voteAverage: Double {
        switch self {
        case .allSeries(let serie):
            return serie.voteAverage
        case .topRatedSeries(let serie):
            return serie.voteAverage
        case .popularSeries(let serie):
            return serie.voteAverage
        }
    }
    var voteCount: Int {
        switch self {
        case .allSeries(let serie):
            return serie.voteCount
        case .topRatedSeries(let serie):
            return serie.voteCount
        case .popularSeries(let serie):
            return serie.voteCount
        }
    }
    var fullposterPath: URL? {
        switch self {
        case .allSeries(let serie):
            return serie.fullPosterURL
        case .topRatedSeries(let serie):
            return serie.fullPosterURL
        case .popularSeries(let serie):
            return serie.fullPosterURL
        }
    }
    var firstAirDate: String {
        switch self {
        case .allSeries(let serie):
            return serie.firstAirDate
        case .topRatedSeries(let serie):
            return serie.firstAirDate
        case .popularSeries(let serie):
            return serie.firstAirDate
        }
    }
    var originCountry: [String] {
        switch self {
        case .allSeries(let serie):
            return serie.originCountry
        case .topRatedSeries(let serie):
            return serie.originCountry
        case .popularSeries(let serie):
            return serie.originCountry
        }
    }
}
