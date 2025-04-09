//
//  DataTest.swift
//  TotalMovies
//
//  Created by Yery Castro on 4/3/25.
//

import Foundation


extension MovieVM {
    static let preview = MovieVM(network: DataTest())
}
extension SeriesVM {
    static let preview = SeriesVM(network: DataTest())
}

struct DataTest: DataInteractor {
    let urlAllMovies = Bundle.main.url(forResource: "allMoviesTest", withExtension: "json")!
    let urlUpcomingMovies = Bundle.main.url(forResource: "upcomingMoviesTest", withExtension: "json")!
    let urlTopRatedMovies = Bundle.main.url(forResource: "topRatedMoviesTest", withExtension: "json")!
    
    let urlAllSeries = Bundle.main.url(forResource: "allSeriesTest", withExtension: "json")!
    let urlTopRatedSeries = Bundle.main.url(forResource: "topRatedSeriesTest", withExtension: "json")!
    let urlPopularSeries = Bundle.main.url(forResource: "popularSeriesTest", withExtension: "json")!
    
    
    func getUpcomingMovies(page: Int) async throws -> [UpcomingMovies] {
        let data = try Data(contentsOf: urlUpcomingMovies)
        return try JSONDecoder().decode(UpcomingMoviesResponse.self, from: data).results
    }
    func getAllMovies(page: Int) async throws -> [AllMovies] {
        let data = try Data(contentsOf: urlAllMovies)
        return try JSONDecoder().decode(AllMoviesResponse.self, from: data).results
    }
    func getTopRatedMovies(page: Int) async throws -> [TopRatedMovies] {
        let data = try Data(contentsOf: urlTopRatedMovies)
        return try JSONDecoder().decode(TopRatedMoviesResponse.self, from: data).results
    }
    func getAllSeries(page: Int) async throws -> [AllSeries] {
        let data = try Data(contentsOf: urlAllSeries)
        return try JSONDecoder().decode(AllSeriesResponse.self, from: data).results
    }
    func getTopRatedSeries(page: Int) async throws -> [TopRatedSeries] {
        let data = try Data(contentsOf: urlTopRatedSeries)
        return try JSONDecoder().decode(TopRatedSeriesResponse.self, from: data).results
    }
    func getPopularSeries(page: Int) async throws -> [PopularSeries] {
        let data = try Data(contentsOf: urlPopularSeries)
        return try JSONDecoder().decode(PopularSeriesResponse.self, from: data).results
    }
}



extension UpcomingMovies {
    static let testUpcomingMovies = UpcomingMovies(
        id: 1126166,
        adult: false,
        backdropPath: "/gFFqWsjLjRfipKzlzaYPD097FNC.jpg",
        genreIds: [
            28,
            53,
            80
        ],
        originalLanguage: "en",
        originalTitle: "Flight Risk",
        overview: "A U.S. Marshal escorts a government witness to trial after he's accused of getting involved with a mob boss, only to discover that the pilot who is transporting them is also a hitman sent to assassinate the informant. After they subdue him, they're forced to fly together after discovering that there are others attempting to eliminate them.",
        popularity: 2568.332,
        posterPath: "/q0bCG4NX32iIEsRFZqRtuvzNCyZ.jpg",
        releaseDate: "2025-01-22",
        title: "Flight Risk",
        video: false,
        voteAverage: 6.1,
        voteCount: 351
    )
}
extension AllMovies {
    static let testAllMovies = AllMovies(
        adult: false,
        backdropPath: "/9nhjGaFLKtddDPtPaX5EmKqsWdH.jpg",
        genreIDS: [
            10749,
            878,
            53
        ],
        id: 950396,
        originalLanguage: "en",
        originalTitle: "The Gorge",
        overview: "Two highly trained operatives grow close from a distance after being sent to guard opposite sides of a mysterious gorge. When an evil below emerges, they must work together to survive what lies within.",
        popularity: 2415.786,
        releaseDate: "2025-02-13",
        title: "The Gorge",
        posterPath: "/7iMBZzVZtG0oBug4TfqDb9ZxAOa.jpg",
        video: false,
        voteAverage: 7.777,
        voteCount: 1620
    )
}
extension TopRatedMovies {
    static let testTopRatedMovies = TopRatedMovies(
        adult: false,
        backdropPath: "/zfbjgQE1uSd9wiPTX4VzsLi0rGG.jpg",
        genreIDS:  [
            18,
            80
        ],
        id: 278,
        originalLanguage: "en",
        originalTitle: "The Shawshank Redemption",
        overview: "Imprisoned in the 1940s for the double murder of his wife and her lover, upstanding banker Andy Dufresne begins a new life at the Shawshank prison, where he puts his accounting skills to work for an amoral warden. During his long stretch in prison, Dufresne comes to be admired by the other inmates -- including an older prisoner named Red -- for his integrity and unquenchable sense of hope.",
        popularity: 29.053,
        posterPath: "/9cqNxx0GxF0bflZmeSMuL5tnGzr.jpg",
        releaseDate: "1994-09-23",
        title: "The Shawshank Redemption",
        video: false,
        voteAverage: 8.708,
        voteCount: 27852
    )
}
extension AllSeries {
    static let testAllSeries = AllSeries(
        adult: false,
        backdropPath: "/tPLUHT2cQYJi66aSZZ1qrcu74Zq.jpg",
        genreIDS: [
            10766,
            18
        ],
        id: 257048,
        originCountry: ["BR"],
        originalLanguage: "pt",
        originalName: "Garota do Momento",
        overview: "Beatriz Dourado, a young black woman marked by abandonment, searches for answers about her past and discovers that her mother, Clarice, left her to pursue her career in Rio de Janeiro. With devastating revelations and a new love, Beatriz faces adversity and transforms her pain into power, fighting to conquer her place in the world.",
        popularity: 2460.108,
        firstAirDate: "2024-11-04",
        name: "She's the One",
        posterPath: "/jFSkjQSZ5Td52igalpoTQRuHtk.jpg",
        voteAverage: 8.1,
        voteCount: 9
    )
}

extension TopRatedSeries {
    static let testTopRatedSeries = TopRatedSeries(
        adult: false,
        backdropPath: "/9faGSFi5jam6pDWGNd0p8JcJgXQ.jpg",
        genreIDS: [
            18,
            80
        ],
        id: 1396,
        originCountry: [
            "US"
        ],
        originalLanguage: "en",
        originalName: "Breaking Bad",
        overview: "Walter White, a New Mexico chemistry teacher, is diagnosed with Stage III cancer and given a prognosis of only two years left to live. He becomes filled with a sense of fearlessness and an unrelenting desire to secure his family's financial future at any cost as he enters the dangerous world of drugs and crime.",
        popularity: 70.022,
        firstAirDate: "2008-01-20",
        name: "Breaking Bad",
        posterPath: "/ineLOBPG8AZsluYwnkMpHRyu7L.jpg",
        voteAverage: 8.923,
        voteCount: 15176
    )
    
}
extension PopularSeries {
    static let testPopularSeries = PopularSeries(
        adult: false,
        backdropPath: "/tPLUHT2cQYJi66aSZZ1qrcu74Zq.jpg",
        genreIDS: [
            10766,
            18
        ],
        id: 257048,
        originCountry: [
            "BR"
        ],
        originalLanguage: "pt",
        originalName: "Garota do Momento",
        overview: "Beatriz Dourado, a young black woman marked by abandonment, searches for answers about her past and discovers that her mother, Clarice, left her to pursue her career in Rio de Janeiro. With devastating revelations and a new love, Beatriz faces adversity and transforms her pain into power, fighting to conquer her place in the world.",
        popularity: 2871.658,
        posterPath: "/jFSkjQSZ5Td52igalpoTQRuHtk.jpg",
        firstAirDate: "2024-11-04",
        name: "She's the One",
        voteAverage: 8.1,
        voteCount: 9
    )
        
}

