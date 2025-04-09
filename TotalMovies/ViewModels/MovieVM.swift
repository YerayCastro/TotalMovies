//
//  MovieVM.swift
//  TotalMovies
//
//  Created by Yery Castro on 4/3/25.
//

import SwiftUI

@Observable
final class MovieVM {
    let network: DataInteractor
    var results: [AllMovies] = []
    var results2: [UpcomingMovies] = []
    var results3: [TopRatedMovies] = []
    var showAlert = false
    var msg = ""
    
    
    
    private var currentPage = 1
    private var maxPages = Int.max

    init(network: DataInteractor = Network()) {
        self.network = network
        Task {
            await getUpcomingMovies()
            await getAllMovies()
            await getTopRatedMovies()
        }
    }
    
    func getAllMovies() async {
            guard currentPage <= maxPages else { return }

            do {
                let response = try await network.getAllMovies(page: currentPage)

                await MainActor.run {
                    results += response
                    currentPage += 1
                    
                }
            } catch {
                await MainActor.run {
                    self.msg = "\(error)"
                    self.showAlert.toggle()
                }
            }
        }

    
    func getUpcomingMovies() async {
        guard currentPage <= maxPages else { return }
        do {
            let response = try await network.getUpcomingMovies(page: currentPage)
            await MainActor.run {
                results2 += response
                currentPage += 1
            }
        } catch {
            await MainActor.run {
                self.msg = "\(error)"
                self.showAlert.toggle()
            }
        }
    }
    
    func getTopRatedMovies() async {
            guard currentPage <= maxPages else { return }

            do {
                let response = try await network.getTopRatedMovies(page: currentPage)

                await MainActor.run {
                    results3 += response
                    currentPage += 1
                    
                }
            } catch {
                await MainActor.run {
                    self.msg = "\(error)"
                    self.showAlert.toggle()
                }
            }
        }

}
