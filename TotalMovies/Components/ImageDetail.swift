//
//  MovieImageDetail2.swift
//  TotalMovies
//
//  Created by Yery Castro on 9/3/25.
//

import SwiftUI

struct ImageDetail: View {
    let url: URL?
    let onClose: () -> Void
    var body: some View {
        AsyncImage(url: url) { image in
            image
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 5))
                .frame(height: 450)
                .frame(maxWidth: .infinity)
                .overlay(alignment: .topTrailing) {
                    Button {
                        onClose()
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundStyle(.blue.opacity(0.8))
                            .imageScale(.large)
                            .padding(.horizontal, 70)
                            .padding(.top)
                    }

                }
        } placeholder: {
            RoundedRectangle(cornerRadius: 5)
                .stroke(lineWidth: 2)
                .frame(width: 320, height: 450)
                .overlay {
                    Image(systemName: "film")
                        .resizable()
                        .scaledToFit()
                        .imageScale(.small)
                        .frame(width: 220, height: 250)
                }
            }
        
    }
}

#Preview {
    ImageDetail(url: URL(string: "https://image.tmdb.org/t/p/original/7iMBZzVZtG0oBug4TfqDb9ZxAOa.jpg"), onClose: {})
}
