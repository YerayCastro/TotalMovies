//
//  MoviesDetailScreen2.swift
//  TotalMovies
//
//  Created by Yery Castro on 9/3/25.
//

import SwiftUI

struct MoviesDetailScreen: View {
    @Binding var selectedMovie: MovieSelection?

    var body: some View {
        ZStack {
            ScrollView {
                VStack {
                    if let selectedMovie {
                        ImageDetail(url: selectedMovie.fullPosterURL) {
                            closeDetail()
                        }
                        Text(selectedMovie.title)
                            .font(.title)
                            .bold()
                        Divider()
                        VStack(alignment: .leading, spacing: 5) {
                            Text(selectedMovie.overview)
                                .font(.subheadline)
                                .foregroundStyle(.secondary)
                                .padding(.leading)
                            Divider()
                            ForEach(CellMovieDetail.allCases) { cell in
                                cell.description(for: selectedMovie)
                            }
                        }
                    }
                }
                
            }
            .scrollIndicators(.never)
        }
    }

    private func closeDetail() {
        selectedMovie = nil
    }
}

#Preview {
    NavigationStack {
        MoviesDetailScreen(selectedMovie: .constant(.allMovies(.testAllMovies)))
    }
}
