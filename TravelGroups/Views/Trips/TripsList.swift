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
    var body: some View {
        List(trips) { trip in
            TripRow(trip: trip)
        }
    }
}

struct TripsList_Previews: PreviewProvider {
    static var previews: some View {
        TripsList()
    }
}
