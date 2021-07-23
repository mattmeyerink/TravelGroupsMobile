//
//  TripRow.swift
//  TravelGroups
//
//  This view displays one row in a list of trips
//
//  Created by Matthew Meyerink on 7/22/21.
//

import SwiftUI

struct TripRow: View {
    var trip: Trip
    
    var body: some View {
        HStack {
            Text(trip.name)
            Text(trip.city + ", " + trip.state)
        }
    }
}

struct TripRow_Previews: PreviewProvider {
    static var previews: some View {
        TripRow()
    }
}
