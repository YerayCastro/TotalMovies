//
//  Pruebas2.swift
//  TotalMovies
//
//  Created by Yery Castro on 6/3/25.
//

import SwiftUI

struct MoviesScreen: View {
    @Environment(MovieVM.self) var vm
    @State private var items = GridItem(.flexible(minimum: 100, maximum: 150))
    @State private var selectedMovie: MovieSelection?
   
    var body: some View {
        ZStack {
            screen
                .opacity(selectedMovie == nil ?  1 : 0)
            
            if selectedMovie != nil {
                MoviesDetailScreen(selectedMovie: $selectedMovie)
            }
            
        }
        
    }
    
    var screen: some View {
        NavigationStack {
            ScrollView {
                Section {
                    ScrollView(.horizontal) {
                        LazyHGrid(rows: [items,items]) {
                            ForEach(vm.results, id: \.self) { movie in
                                Card(url: movie.fullPosterURL, title: movie.title)
                                    .onTapGesture {
                                        selectedMovie = .allMovies(movie)
                                    }
                                    .onAppear {
                                        if movie == vm.results.last {
                                            Task {
                                                await vm.getAllMovies()
                                            }
                                        }
                                    }
                            }
                        }
                    }
                } header: {
                    Header(title: "All movies")
                }
                Section {
                    ScrollView(.horizontal) {
                        LazyHGrid(rows: [items,items]) {
                            ForEach(vm.results2, id: \.self) { movie in
                                Card(url: movie.fullPosterURL, title: movie.title)
                                    .onTapGesture {
                                        selectedMovie = .upComingMovies(movie)
                                    }
                                    .onAppear {
                                        if movie == vm.results2.last {
                                            Task {
                                                await vm.getUpcomingMovies()
                                            }
                                        }
                                    }
                            }
                        }
                    }
                } header: {
                    Header(title: "Upcoming Movies")
                }
                Section {
                    ScrollView(.horizontal) {
                        LazyHGrid(rows: [items,items]) {
                            ForEach(vm.results3, id: \.self) { movie in
                                Card(url: movie.fullPosterURL, title: movie.title)
                                    .onTapGesture {
                                        selectedMovie = .topRatedMovies(movie)
                                    }
                                    .onAppear {
                                        if movie == vm.results3.last {
                                            Task {
                                                await vm.getTopRatedMovies()
                                            }
                                        }
                                    }
                            }
                        }
                    }
                } header: {
                    Header(title: "Top rates movies")
                }
                
            }
            .scrollIndicators(.never)
            .padding()
        }
    }
    

}



#Preview {
    MoviesScreen()
        .environment(MovieVM.preview)
}


