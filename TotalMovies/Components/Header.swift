//
//  HeaderMovies.swift
//  TotalMovies
//
//  Created by Yery Castro on 10/3/25.
//

import SwiftUI

struct Header: View {
    let title: String
    var body: some View {
        Text(title)
            .font(.title)
            .bold()
            .foregroundStyle(Color.red)
    }
}

#Preview {
    Header(title: "Top rates movies")
}
