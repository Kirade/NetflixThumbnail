//
//  ContentView.swift
//  NetflixThumbnail
//
//  Created by 허재영 on 2024.12.10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("home")
                }
                .toolbarBackground(.black, for: .tabBar)
            Text("2탭 화면")
                .tabItem {
                    Image(systemName: "gamecontroller.fill")
                    Text("Game")
                }
            Text("3탭 화면")
                .tabItem {
                    Image(systemName: "play.rectangle.on.rectangle")
                    Text("New & Hot")
                }
            Text("4탭 화면")
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                    Text("나의 넷플릭스")
                }
        }
    }
}

#Preview {
    ContentView()
}
