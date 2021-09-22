//
//  TripMemberList.swift
//  TravelGroups
//
//  List of members present on a given trip.
//  Varies from followers/following list as it contains
//  methods to edit and delete list.
//
//  Created by Matthew Meyerink on 9/21/21.
//

import SwiftUI

struct TripMemberList: View {
    var tripMembers: [User]
    
    var body: some View {
        List(tripMembers) {tripMember in
            NavigationLink(destination: ProfilePage(currentUser: CurrentUser(user: tripMember), allMyPhotos: sampleTripImages)) {
                UserListRow(user: tripMember)
            }
        }
            .navigationBarTitle("Trip Members")
    }
}

struct TripMemberList_Previews: PreviewProvider {
    static var previews: some View {
        TripMemberList(tripMembers: getSampleUsers())
    }
}
