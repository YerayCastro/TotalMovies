//
//  ContentView.swift
//  TotalMovies
//
//  Created by Yery Castro on 4/3/25.
//

import SwiftUI

struct MainView: View {
    @Environment(MovieVM.self) var vm
    @Environment(SeriesVM.self) var vm2
    @State private var selectedTab: Screens = .movies
    
    var body: some View {
        @Bindable var bvm = vm
        TabView {
            ForEach(Screens.allCases, id: \.self) { screen in
                Tab {
                    screen.view
                } label: {
                    Label(screen.title, systemImage: screen.image)
                        .tag(screen)
                }
            }
            
        }
        .alert("System Alert", isPresented: $bvm.showAlert) { } message: {
            Text(vm.msg)
        }
    }
}

#Preview {
    MainView()
        .environment(MovieVM.preview)
        .environment(SeriesVM.preview)
}

