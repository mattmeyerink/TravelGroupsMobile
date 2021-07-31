//
//  TripsList.swift
//  TravelGroups
//
//  View displays a list of trips
//
//  Created by Matthew Meyerink on 7/22/21.
//

import SwiftUI

struct TripsList: View {
    var trips: [Trip]
    var listTitle: String
    
    var body: some View {
        NavigationView {
            List(trips) { trip in
                NavigationLink(destination: TripsDetailPage(trip: trip)) {
                    TripRow(trip: trip)
                }
            }
            .navigationTitle(listTitle)
        }
    }
}

struct TripsList_Previews: PreviewProvider {
    static var previews: some View {
        TripsList(trips: pastTrips, listTitle: "Past Trips")
    }
}
