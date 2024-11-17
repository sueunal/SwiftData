//
//  Friend.swift
//  FriendsFavoriteMovies
//
//  Created by Soom on 11/17/24.
//

import Foundation
import SwiftData

@Model
class Friend {
    var name: String
    init(name: String) {
        self.name = name
    }
    static let sampleData = [
           Friend(name: "Elena"),
           Friend(name: "Graham"),
           Friend(name: "Mayuri"),
           Friend(name: "Rich"),
           Friend(name: "Rody"),
       ]
}
