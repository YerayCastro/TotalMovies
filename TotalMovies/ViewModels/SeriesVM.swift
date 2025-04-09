//
//  SeriesVM.swift
//  TotalMovies
//
//  Created by Yery Castro on 10/3/25.
//

import SwiftUI

@Observable
final class SeriesVM {
    let network: DataInteractor
    var results: [AllSeries] = []
    var results2: [TopRatedSeries] = []
    var results3: [PopularSeries] = []
    var showAlert = false
    var msg = ""
    private var currentPage = 1
    private var maxPages = Int.max
    
    init(network: DataInteractor = Network()) {
        self.network = network
        Task {
            await getAllSeries()
            await getTopRatedSeries()
            await getPopularSeries()
        }
    }
    
    func getAllSeries() async {
            guard currentPage <= maxPages else { return }

            do {
                let response = try await network.getAllSeries(page: currentPage)

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
    func getTopRatedSeries() async {
            guard currentPage <= maxPages else { return }

            do {
                let response = try await network.getTopRatedSeries(page: currentPage)

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
    func getPopularSeries() async {
            guard currentPage <= maxPages else { return }

            do {
                let response = try await network.getPopularSeries(page: currentPage)

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
