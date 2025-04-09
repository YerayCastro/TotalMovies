//
//  URLRequest.swift
//  TotalMovies
//
//  Created by Yery Castro on 4/3/25.
//

import Foundation

extension URLRequest {
    static func get(url: URL) -> URLRequest {
        var request = URLRequest(url: url)
        request.timeoutInterval = 60
        request.httpMethod = "GET"
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        return request
    }
    
    static func post<JSON>(url: URL, data: JSON, method: String = "POST") -> URLRequest where JSON: Codable {
        var request = URLRequest(url: url)
        request.timeoutInterval = 60
        request.httpMethod = method
        request.setValue("application/json; charset=utf8", forHTTPHeaderField: "Content-Type")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.httpBody = try? JSONEncoder().encode(data)
        return request
    }
    
    static func getUpcomingMovies(url: URL, page: Int, totalPages: Int = 50, totalResults: Int, apikey: String) -> URLRequest {
        let page = URLQueryItem(name: "page", value: String(page))
        let apikey = URLQueryItem(name: "api_key", value: String(apikey))
        let totalResults = URLQueryItem(name: "total_results", value: String(totalResults))
        var request = URLRequest(url: url)
        request.url?.append(queryItems: [page, apikey, totalResults])
        request.httpMethod = "GET"
        request.timeoutInterval = 60
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
        return request
    }
    
    static func getAllMovies(url: URL, page: Int, totalPages: Int = 50, totalResults: Int, apikey: String) -> URLRequest {
        let page = URLQueryItem(name: "page", value: String(page))
        let apikey = URLQueryItem(name: "api_key", value: String(apikey))
        let totalResults = URLQueryItem(name: "total_results", value: String(totalResults))
        let includeAdult = URLQueryItem(name: "include_adult", value: "false")
        let includeVideo = URLQueryItem(name: "include_video", value: "false")
        let language = URLQueryItem(name: "language", value: "en-US")
        let sortBy = URLQueryItem(name: "sort_by", value: "popularity.desc")
        var request = URLRequest(url: url)
        request.url?.append(queryItems: [page, apikey, totalResults, includeAdult, includeVideo, language, sortBy])
        request.httpMethod = "GET"
        request.timeoutInterval = 60
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
        return request
    }
    static func getTopRatedMovies(url: URL, page: Int, totalPages: Int = 50, totalResults: Int, apikey: String) -> URLRequest {
        let page = URLQueryItem(name: "page", value: String(page))
        let apikey = URLQueryItem(name: "api_key", value: String(apikey))
        let totalResults = URLQueryItem(name: "total_results", value: String(totalResults))
        var request = URLRequest(url: url)
        request.url?.append(queryItems: [page, apikey, totalResults])
        request.httpMethod = "GET"
        request.timeoutInterval = 60
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
        return request
    }
    static func getAllSeries(url: URL, page: Int, totalPages: Int = 50, totalResults: Int, apikey: String) -> URLRequest {
        let page = URLQueryItem(name: "page", value: String(page))
        let apikey = URLQueryItem(name: "api_key", value: String(apikey))
        let totalResults = URLQueryItem(name: "total_results", value: String(totalResults))
        var request = URLRequest(url: url)
        request.url?.append(queryItems: [page, apikey, totalResults])
        request.httpMethod = "GET"
        request.timeoutInterval = 60
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
        return request
    }
    static func getTopRatedSeries(url: URL, page: Int, totalPages: Int = 50, totalResults: Int, apikey: String) -> URLRequest {
        let page = URLQueryItem(name: "page", value: String(page))
        let apikey = URLQueryItem(name: "api_key", value: String(apikey))
        let totalResults = URLQueryItem(name: "total_results", value: String(totalResults))
        var request = URLRequest(url: url)
        request.url?.append(queryItems: [page, apikey, totalResults])
        request.httpMethod = "GET"
        request.timeoutInterval = 60
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
        return request
    }
    static func getPopularSeries(url: URL, page: Int, totalPages: Int = 50, totalResults: Int, apikey: String) -> URLRequest {
        let page = URLQueryItem(name: "page", value: String(page))
        let apikey = URLQueryItem(name: "api_key", value: String(apikey))
        let totalResults = URLQueryItem(name: "total_results", value: String(totalResults))
        var request = URLRequest(url: url)
        request.url?.append(queryItems: [page, apikey, totalResults])
        request.httpMethod = "GET"
        request.timeoutInterval = 60
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
        return request
    }
}
