//
//  MoviesCard.swift
//  TotalMovies
//
//  Created by Yery Castro on 5/3/25.
//

import SwiftUI


struct Card: View {
    let url: URL?
    let title: String
    var body: some View {
        RoundedRectangle(cornerRadius: 5)
            .stroke(lineWidth: 2)
            .frame(width: 120, height: 150)
            .overlay {
                AsyncImage(url: url) { image in
                    image
                        .resizable()
                        
                } placeholder: {
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(lineWidth: 2)
                        .frame(width: 120, height: 150)
                        .overlay {
                            VStack {
                                Image(systemName: "film")
                                    .imageScale(.large)
                                Text(title)
                                    .font(.caption)
                                    .bold()
                                    .padding(.top)
                            }
                        }
                }
            }
    }
}

#Preview {
    Card(url: URL(string: "https://image.tmdb.org/t/p/original/7iMBZzVZtG0oBug4TfqDb9ZxAOa.jpg"), title: "The Gorge")
}
