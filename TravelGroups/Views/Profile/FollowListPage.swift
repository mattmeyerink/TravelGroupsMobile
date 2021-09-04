//
//  FollowListPage.swift
//  TravelGroups
//
//  A list view for followers/following
//
//  Created by Matthew Meyerink on 9/3/21.
//

import SwiftUI

struct FollowListPage: View {
    var users: [User]
    var navigationTitle: String
    
    var body: some View {
        List(users) {user in
            NavigationLink(destination: ProfilePage(currentUser: CurrentUser(user: user), allMyPhotos: sampleTripImages)) {
                UserListRow(user: user)
            }
        }
            .navigationBarTitle(navigationTitle)
    }
}

struct FollowListPage_Previews: PreviewProvider {
    static var previews: some View {
        FollowListPage(users: sampleUsers, navigationTitle: "Followers")
    }
}
