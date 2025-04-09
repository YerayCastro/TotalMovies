//
//  URLSession.swift
//  TotalMovies
//
//  Created by Yery Castro on 4/3/25.
//

import SwiftUI

extension URLSession {
    func getData(request: URLRequest) async throws -> (Data, HTTPURLResponse) {
        do {
            let (data, response) = try await URLSession.shared.data(for: request)
            guard let httpResponse = response as? HTTPURLResponse else { throw NetworkError.noHTTP }
            return (data, httpResponse)
        } catch {
            throw NetworkError.general(error)
        }
    }
}
