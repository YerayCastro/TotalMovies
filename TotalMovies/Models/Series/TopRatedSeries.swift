//
//  TopRatedSeries.swift
//  TotalMovies
//
//  Created by Yery Castro on 11/3/25.
//

import Foundation

struct TopRatedSeriesResponse: Codable {
    let page: Int
    let results: [TopRatedSeries]
}

// MARK: - Result
struct TopRatedSeries: Codable, Hashable {
    let adult: Bool
    let backdropPath: String?
    let genreIDS: [Int]
    let id: Int
    let originCountry: [String]
    let originalLanguage: String
    let originalName, overview: String
    let popularity: Double
    let firstAirDate, name: String
    let posterPath: String?
    let voteAverage: Double
    let voteCount: Int
    var fullPosterURL: URL? {
        URL(string: "https://image.tmdb.org/t/p/original\(posterPath ?? "")")
    }

    enum CodingKeys: String, CodingKey {
        case adult
        case backdropPath = "backdrop_path"
        case genreIDS = "genre_ids"
        case id
        case originCountry = "origin_country"
        case originalLanguage = "original_language"
        case originalName = "original_name"
        case overview, popularity
        case posterPath = "poster_path"
        case firstAirDate = "first_air_date"
        case name
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
}
