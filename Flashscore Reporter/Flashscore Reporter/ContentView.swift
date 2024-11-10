//
//  ContentView.swift
//  Flashscore Reporter
//
//  Created by Antoni Gebauer on 20/10/2024.
//

import SwiftUI

enum Tabs: String, Equatable, Hashable {
    case home = "home"
    case soccer = "soccer"
    case hockey = "hockey"
    case settings = "settings"
}

struct ContentView: View {
    
    init() {
        UITabBar.appearance().tintColor = .white
        UITabBar.appearance().unselectedItemTintColor = .white.withAlphaComponent(0.6)
        UITabBar.appearance().backgroundColor = .tabBarBackround
                                   
    }
    
    @State var selectedTab: Tabs = .home
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Tab("Start", systemImage: "house", value: .home) {
                HomeView()
            }
            
            Tab("Piłka Nożna", systemImage: "figure.indoor.soccer", value: .soccer) {
                HomeView()
            }
            
            Tab("Hokej", systemImage: "figure.hockey", value: .hockey) {
                HomeView()
            }
            
            Tab("Ustawienia", systemImage: "gearshape", value: .settings) {
                HomeView()
            }
        }
    }
}

#Preview {
    ContentView()
}
