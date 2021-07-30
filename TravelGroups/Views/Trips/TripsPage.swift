//
//  TripsPage.swift
//  TravelGroups
//
//  Trips page contianing current trip and past/future trips list view
//
//  Created by Matthew Meyerink on 7/20/21.
//

import SwiftUI

struct TripsPage: View {
    @State private var showPastTrips = true
    var body: some View {
        VStack {
            Text("This will be the trips page!")
            Toggle("Show Past Trips", isOn: $showPastTrips)
            if showPastTrips {
                TripsList()
            } else {
                TripsList()
            }
            
        }
    }
}

struct TripsPage_Previews: PreviewProvider {
    static var previews: some View {
        TripsPage()
    }
}
