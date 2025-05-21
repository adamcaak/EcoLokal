//
//  MainTabView.swift
//  EcoLocal
//
//  Created by Łukasz Adamczak on 21/05/2025.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            MainMenuView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            SellerListView()
                .tabItem {
                    Label("Dostawcy", systemImage: "cart.fill")
                }
            MapView()
                .tabItem {
                    Label("Mapa", systemImage: "map")
                }
            SettingsView()
                .tabItem {
                    Label("Profil", systemImage: "gear")
                }
        }
    }
}

#Preview {
    MainTabView()
}
