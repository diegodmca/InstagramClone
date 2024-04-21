//
//  MainTabView.swift
//  InstagramClone
//
//  Created by Diego Carvalho on 4/15/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            Text("Feed")
                .tabItem { Image(systemName: "house") }
            Text("Search")
                .tabItem { Image(systemName: "magnifyingglass") }
            Text("UploadPost")
                .tabItem { Image(systemName: "plus.square") }
            Text("Notifications")
                .tabItem { Image(systemName: "heart") }
            ProfileView()
                .tabItem { Image(systemName: "person") }
        }
        .accentColor(.black)
    }
}

#Preview {
    MainTabView()
}
