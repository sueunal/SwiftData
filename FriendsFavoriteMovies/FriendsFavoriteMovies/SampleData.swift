//
//  SampleData.swift
//  FriendsFavoriteMovies
//
//  Created by Soom on 11/17/24.
//

import Foundation
import SwiftData

@MainActor
class SampleData {
    static let shared = SampleData()
    
    let modelContainer: ModelContainer
    
    var context: ModelContext {
        modelContainer.mainContext
    }
    private init() {
        let schema = Schema([
            Friend.self,
            Movie.self
        ])
        
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: true)
        
        do {
            modelContainer = try ModelContainer(for: schema, configurations: [modelConfiguration])
            insertSampleData()
            
            try context.save()
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }
    
    private func insertSampleData() {
        for friend in Friend.sampleData {
            context.insert(friend)
        }
        for movie in Movie.sampleData {
            context.insert(movie)
        }
    }
    func insertFriend(_ friend: Friend) {
        context.insert(friend)
    }
}
