//
//  FriendList.swift
//  FriendsFavoriteMovies
//
//  Created by Soom on 11/17/24.
//

import SwiftUI
import SwiftData

struct FriendList: View {
    @Query(sort: \Friend.name) private var friends: [Friend]
    @Environment(\.modelContext) private var context
    var body: some View {
        NavigationSplitView {
            List {
                ForEach(friends) { friend in
                    NavigationLink (friend.name) {
                        Text("Detail view for \(friend.name)")
                            .navigationTitle("Friend")
                            .navigationBarTitleDisplayMode(.inline)
                    }
                }
            }
            .navigationTitle("Friends")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        SampleData.shared.insertFriend(Friend(name: "New Friend"))
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
        } detail: {
            Text("Select a friends")
                .navigationTitle("Friend")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    FriendList()
        .modelContainer(SampleData.shared.modelContainer)
}
