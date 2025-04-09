import SwiftUI

enum CellMovieDetail: Identifiable, CaseIterable {
    case adult
    case originalTitle
    case originalLanguage
    case releaseDate
    case popularity
    case voteAverage
    case voteCount
    case video
    
    

    var id: Self { self }

    func description(for selectedMovie: MovieSelection) -> some View {
        switch self {
        case .adult:
            return CellDetail(title: "Adult", text: "\(selectedMovie.adult)", icon: "18.circle")
        case .originalTitle:
            return CellDetail(title: "Original title", text: selectedMovie.originalTitle, icon: "film")
        case .originalLanguage:
            return CellDetail(title: "Original language", text: selectedMovie.originalLanguage, icon: "character.book.closed")
        case .releaseDate:
            return CellDetail(title: "Release date", text: selectedMovie.releaseDate, icon: "calendar")
        case .voteAverage:
            return CellDetail(title: "Vote average", text: "\(selectedMovie.voteAverage)", icon: "star")
        case .voteCount:
            return CellDetail(title: "Vote count", text: "\(selectedMovie.voteCount) votes", icon: "list.bullet.clipboard")
        case .video:
            return CellDetail(title: "Video", text: "\(selectedMovie.video)", icon: "film.circle")
        case .popularity:
            return CellDetail(title: "Popularity", text: "\(selectedMovie.popularity) viewers", icon: "hand.thumbsup")
        }
    }
}
