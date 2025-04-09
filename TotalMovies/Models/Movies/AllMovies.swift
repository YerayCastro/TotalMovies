//
//  AllMovies.swift
//  TotalMovies
//
//  Created by Yery Castro on 5/3/25.
//

import Foundation

// MARK: - AllMovies
struct AllMoviesResponse: Codable {
    let page: Int
    let results: [AllMovies]
}

// MARK: - Result
struct AllMovies: Codable, Hashable {
    let adult: Bool
    let backdropPath: String?
    let genreIDS: [Int]
    let id: Int
    let originalLanguage: String
    let originalTitle, overview: String
    let popularity: Double
    let releaseDate, title: String
    let posterPath: String?
    let video: Bool
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
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case overview, popularity
        case posterPath = "poster_path"
        case releaseDate = "release_date"
        case title, video
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
}



