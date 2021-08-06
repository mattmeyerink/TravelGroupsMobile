//
//  TripsDetailPage.swift
//  TravelGroups
//
//  Detail page for a single trip.
//
//  Created by Matthew Meyerink on 7/29/21.
//

import SwiftUI

struct TripsDetailPage: View {
    var trip: Trip
    
    var body: some View {
        HStack {
            Text(trip.name)
                .font(.title)
            
            NavigationLink(destination: TripFormPage(trip: trip)) {
                Text("Edit")
            }
        }
    }
}

struct TripsDetailPage_Previews: PreviewProvider {
    static var previews: some View {
        TripsDetailPage(trip: pastTrips[0])
    }
}
