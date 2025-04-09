//
//  TotalMoviesApp.swift
//  TotalMovies
//
//  Created by Yery Castro on 4/3/25.
//

import SwiftUI

@main
struct TotalMoviesApp: App {
    @State var vm =  MovieVM()
    @State var vm2 =  SeriesVM()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(vm)
                .environment(vm2)
        }
    }
}
