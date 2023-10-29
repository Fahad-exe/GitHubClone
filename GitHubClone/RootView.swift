//
//  RootView.swift
//  GitHubClone
//
//  Created by Fahad Matlagitu on 24/10/2023.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        AuthPage()
        //GitHubApp()
    }
    func GitHubApp() -> some View{
        TabView{
            NavigationStack{
                ContentView()
                    .navigationTitle("Home")
            }
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            NavigationStack{
                NotificationPage()
                    .navigationTitle("Notification")
            }
                .tabItem {
                    Label("Notification", systemImage: "bell")
                }
            NavigationStack{
                ExplorePage()
                    .navigationTitle("Explore")
            }
                .tabItem {
                    Label("Explore", systemImage: "magnifyingglass")
                }
            NavigationStack{
                Text("Profile")
                    .navigationTitle("Profile")
            }
                .tabItem {
                    Label("Profile",systemImage: "person.circle")
                }
        }
    }
}

#Preview {
    RootView()
}
