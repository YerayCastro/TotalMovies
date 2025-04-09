//
//  URL.swift
//  TotalMovies
//
//  Created by Yery Castro on 4/3/25.
//

import Foundation


let api = URL(string: "https://api.themoviedb.org/3/")!
let apiKey = "38e26c5b75fd09856879091990668c2e"
let token = "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIzOGUyNmM1Yjc1ZmQwOTg1Njg3OTA5MTk5MDY2OGMyZSIsIm5iZiI6MTczMjAxNDc2Ny43NTU2MjYyLCJzdWIiOiI2NzNjNmJjZmZmMzMwYmRjNTc4MjI0ZjYiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.5MDQN8YgrKHXcKB5IHFi5bZBL_bM47gduynwsixoZDk"

extension URL {
    static let getAllMovies = api.appending(path: "discover/movie")
    static let getUpcoming = api.appending(path: "movie/upcoming")
    static let getTopRatedMovies = api.appending(path: "movie/top_rated")
    
    static let getAllSeries = api.appending(path: "discover/tv")
    static let getTopRatedSeries = api.appending(path: "tv/top_rated")
    static let getPopularSeries = api.appending(path: "tv/popular")
}
