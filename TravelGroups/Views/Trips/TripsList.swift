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
    
    var body: some View {
        ScrollView {
            ForEach(trips) { trip in
                NavigationLink(destination: TripsDetailPage(trip: trip)) {
                    TripRow(trip: trip)
                }
            }
        }
    }
}

struct TripsList_Previews: PreviewProvider {
    static var previews: some View {
        TripsList(trips: Array(sampleTrips[...5]))
    }
}
