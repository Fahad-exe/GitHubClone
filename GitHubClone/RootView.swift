//
//  RootView.swift
//  GitHubClone
//
//  Created by Fahad Matlagitu on 24/10/2023.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            NotificationPage()
                .tabItem {
                    Label("Notification", systemImage: "bell")
                }
            ExplorePage()
                .tabItem {
                    Label("Explore", systemImage: "magnifyingglass")
                }
            Text("Profile")
                .tabItem {
                    Label("Profile",systemImage: "person.circle")
                }
        }
    }
}

#Preview {
    RootView()
}
