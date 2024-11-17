//
//  FriendsFavoriteMoviesApp.swift
//  FriendsFavoriteMovies
//
//  Created by Soom on 11/17/24.
//

import SwiftUI
import SwiftData

@main
struct FriendsFavoriteMoviesApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(SampleData.shared.modelContainer)
        }
    }
}
