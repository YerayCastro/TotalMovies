//
//  SeriesDetailScreen.swift
//  TotalMovies
//
//  Created by Yery Castro on 11/3/25.
//

import SwiftUI

struct SeriesDetailScreen: View {
    @Binding var selectedSerie: SeriesSelection?
    var body: some View {
        ZStack {
            ScrollView {
                VStack {
                    if let selectedSerie {
                        ImageDetail(url: selectedSerie.fullposterPath) {
                            closeDetailSerie()
                        }
                        Text(selectedSerie.name)
                            .font(.title)
                            .bold()
                        Divider()
                        VStack(alignment: .leading, spacing: 5) {
                            Text(selectedSerie.overview)
                                .font(.subheadline)
                                .foregroundStyle(.secondary)
                                .padding(.leading)
                            Divider()
                            ForEach(CellSerieDetail.allCases) { cell in
                                cell.descriptionSerie(for: selectedSerie)
                            }
                        }
                    }
                }
            }
            .scrollIndicators(.never)
        }
    }
    func closeDetailSerie() {
       selectedSerie = nil
   }
}

#Preview {
    SeriesDetailScreen(selectedSerie: .constant(.allSeries(.testAllSeries)))
}
