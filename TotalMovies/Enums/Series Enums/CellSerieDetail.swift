//
//  CellSerieDetail.swift
//  TotalMovies
//
//  Created by Yery Castro on 11/3/25.
//

import SwiftUI

enum CellSerieDetail: Identifiable, CaseIterable {
case adult
case originalName
case originalLanguage
case originCountry
case firstAirDate
case popularity
case voteAverage
case voteCount

var id: Self { self }
    
    func descriptionSerie(for selectedSerie: SeriesSelection) -> some View {
        switch self {
        case .adult:
            return CellDetail(title: "Adult", text: "\(selectedSerie.adult)", icon: "18.circle")
        case .originalName:
            return CellDetail(title: "Original name", text: selectedSerie.originalName, icon: "film")
        case .originalLanguage:
            return CellDetail(title: "Original language", text: selectedSerie.originalLanguage, icon: "character.book.closed")
        case .originCountry:
            let countries = selectedSerie.originCountry.joined(separator: ", ")
            return CellDetail(title: "Original country", text: countries, icon: "globe")
        case .firstAirDate:
            return CellDetail(title: "First air date", text: selectedSerie.firstAirDate, icon: "calendar")
        case .popularity:
            return CellDetail(title: "Popularity", text: "\(selectedSerie.popularity) viewers", icon: "hand.thumbsup")
        case .voteAverage:
            return CellDetail(title: "Vote average", text: "\(selectedSerie.voteAverage)", icon: "star")
        case .voteCount:
            return CellDetail(title: "Vote count", text: "\(selectedSerie.voteCount) votes", icon: "list.bullet.clipboard")
        }
    }
}
