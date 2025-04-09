//
//  Movie.swift
//  TotalMovies
//
//  Created by Yery Castro on 4/3/25.
//


import Foundation

struct UpcomingMoviesResponse: Codable {
    let dates: Dates?
    let page: Int
    let results: [UpcomingMovies]
}

struct Dates: Codable {
    let maximum: String
    let minimum: String
}

struct UpcomingMovies: Codable, Identifiable, Hashable {
    let id: Int
    let adult: Bool
    let backdropPath: String?
    let genreIds: [Int]
    let originalLanguage: String
    let originalTitle: String
    let overview: String
    let popularity: Double
    let posterPath: String?
    let releaseDate: String
    let title: String
    let video: Bool
    let voteAverage: Double
    let voteCount: Int
        var fullPosterURL: URL? {
            URL(string: "https://image.tmdb.org/t/p/original\(posterPath ?? "")")
        }

    enum CodingKeys: String, CodingKey {
        case id, adult, overview, popularity, title, video
        case backdropPath = "backdrop_path"
        case genreIds = "genre_ids"
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case posterPath = "poster_path"
        case releaseDate = "release_date"
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
}


