//
//  TripsProfileList.swift
//  TravelGroups
//
//  List of trips accessible from the profile page
//
//  Created by Matthew Meyerink on 9/6/21.
//

import SwiftUI

struct TripsProfileList: View {
    var trips: [Trip]
    var user: User
    
    var body: some View {
        List(trips) { trip in
            NavigationLink(destination: TripsDetailPage(trip: trip, activities: sampleActivities, images: sampleTripImages)) {
                TripListRow(trip: trip)
            }
        }
            .navigationBarTitle(user.firstName + "'s Trips")
    }
}

struct TripsProfileList_Previews: PreviewProvider {
    static var previews: some View {
        TripsProfileList(trips: sampleTrips, user: sampleUsers[0])
    }
}
