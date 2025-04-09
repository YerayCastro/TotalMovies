//
//  Network.swift
//  TotalMovies
//
//  Created by Yery Castro on 4/3/25.
//

import Foundation
protocol DataInteractor {
    func getUpcomingMovies(page: Int) async throws -> [UpcomingMovies]
    func getAllMovies(page: Int) async throws -> [AllMovies]
    func getTopRatedMovies(page: Int) async throws -> [TopRatedMovies]
    func getAllSeries(page: Int) async throws -> [AllSeries]
    func getTopRatedSeries(page: Int) async throws -> [TopRatedSeries]
    func getPopularSeries(page: Int) async throws -> [PopularSeries]
}
struct Network: DataInteractor {
    func getUpcomingMovies(page: Int) async throws -> [UpcomingMovies] {
        try await getJSON(request: .getUpcomingMovies(url: .getUpcoming, page: page, totalPages: 10, totalResults: 50, apikey: apiKey), type: UpcomingMoviesResponse.self).results
    }
    func getAllMovies(page: Int) async throws -> [AllMovies] {
        try await getJSON(request: .getAllMovies(url: .getAllMovies, page: page, totalPages: 10, totalResults: 50, apikey: apiKey), type: AllMoviesResponse.self).results
    }
    func getTopRatedMovies(page: Int) async throws -> [TopRatedMovies] {
        try await getJSON(request: .getTopRatedMovies(url: .getTopRatedMovies, page: page, totalResults: 50, apikey: apiKey), type: TopRatedMoviesResponse.self).results
    }
    func getAllSeries(page: Int) async throws -> [AllSeries] {
        try await getJSON(request: .getAllSeries(url: .getAllSeries, page: page, totalResults: 50, apikey: apiKey), type: AllSeriesResponse.self).results
    }
    func getTopRatedSeries(page: Int) async throws -> [TopRatedSeries] {
        try await getJSON(request: .getTopRatedSeries(url: .getTopRatedSeries, page: page, totalResults: 50, apikey: apiKey), type: TopRatedSeriesResponse.self).results
    }
    func getPopularSeries(page: Int) async throws -> [PopularSeries] {
        try await getJSON(request: .getPopularSeries(url: .getPopularSeries, page: page, totalResults: 50, apikey: apiKey), type: PopularSeriesResponse.self).results
    }
}

