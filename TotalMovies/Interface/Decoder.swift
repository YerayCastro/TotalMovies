//
//  Decoder.swift
//  TotalMovies
//
//  Created by Yery Castro on 4/3/25.
//

import SwiftUI

func getJSON<JSON: Codable>(request: URLRequest, type: JSON.Type) async throws -> JSON {
    let (data, response) = try await URLSession.shared.getData(request: request)
    if response.statusCode == 200 {
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(type.self, from: data)
        } catch {
            print(error)
            throw NetworkError.json
        }
    } else {
        throw NetworkError.statusCode(response.statusCode)
    }
    
    func postJSON(request: URLRequest, status: Int = 200) async throws {
        let (_, response) = try await URLSession.shared.getData(request: request)
        if response.statusCode != status {
            throw NetworkError.statusCode(response.statusCode)
        }
    }
    
}
