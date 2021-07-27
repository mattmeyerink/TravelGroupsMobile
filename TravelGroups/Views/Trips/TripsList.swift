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
        List {
            TripRow(trip: trips[0])
            TripRow(trip: trips[1])
        }
    }
}

struct TripsList_Previews: PreviewProvider {
    static var previews: some View {
        TripsList()
    }
}
