//
//  CellDetail.swift
//  TotalMovies
//
//  Created by Yery Castro on 10/3/25.
//

import SwiftUI

struct CellDetail: View {
    let title: String
    let text: String
    let icon: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            HStack(alignment: .firstTextBaseline) {
                Image(systemName: icon)
                    .imageScale(.medium)
                Text(title)
                    .font(.subheadline)
                    .bold()
            }
            Text(text)
                .font(.body)
                .foregroundStyle(.secondary)
        }
        .padding(.leading)
    }
}

#Preview {
    CellDetail(title: "Original title", text: "The gorge", icon: "film")
}
