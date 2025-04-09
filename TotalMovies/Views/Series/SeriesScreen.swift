//
//  SeriesScreen.swift
//  TotalMovies
//
//  Created by Yery Castro on 10/3/25.
//

import SwiftUI

struct SeriesScreen: View {
    @Environment(SeriesVM.self) var vm
    @State private var items = GridItem(.flexible(minimum: 100, maximum: 150))
    @State private var selectedSerie: SeriesSelection?
    
    var body: some View {
        ZStack {
            screen
                .opacity(selectedSerie == nil ?  1 : 0)
            
            if selectedSerie != nil {
                SeriesDetailScreen(selectedSerie: $selectedSerie)
            }
        }
    }
    
    var screen: some View {
        NavigationStack {
            ScrollView {
                Section {
                    ScrollView(.horizontal) {
                        LazyHGrid(rows: [items, items]) {
                            ForEach(vm.results, id: \.self) { serie in
                                Card(url: serie.fullPosterURL, title: serie.name)
                                    .onTapGesture {
                                        selectedSerie = .allSeries(serie)
                                    }
                                    .onAppear {
                                        if serie == vm.results.last {
                                            Task {
                                                await vm.getAllSeries()
                                            }
                                        }
                                    }
                            }
                        }
                    }
                } header: {
                    Header(title: "All series")
                }
                Section {
                    ScrollView(.horizontal) {
                        LazyHGrid(rows: [items, items]) {
                            ForEach(vm.results3, id: \.self) { serie in
                                Card(url: serie.fullPosterURL, title: serie.name)
                                    .onTapGesture {
                                        selectedSerie = .popularSeries(serie)
                                    }
                                    .onAppear {
                                        if serie == vm.results3.last {
                                            Task {
                                                await vm.getPopularSeries()
                                            }
                                        }
                                    }
                            }
                        }
                    }
                } header: {
                    Header(title: "Popular series")
                }
                Section {
                    ScrollView(.horizontal) {
                        LazyHGrid(rows: [items, items]) {
                            ForEach(vm.results2, id: \.self) { serie in
                                Card(url: serie.fullPosterURL, title: serie.name)
                                    .onTapGesture {
                                        selectedSerie = .topRatedSeries(serie)
                                    }
                                    .onAppear {
                                        if serie == vm.results2.last {
                                            Task {
                                                await vm.getTopRatedSeries()
                                            }
                                        }
                                    }
                            }
                        }
                    }
                } header: {
                    Header(title: "Top rated series")
                }
            }
            .padding()
            .scrollIndicators(.never)
        }
        
    }
}

#Preview {
    SeriesScreen()
        .environment(SeriesVM.preview)
}
