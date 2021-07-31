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
    @State private var showPastTrips: Bool = false
    
    var body: some View {
        VStack {
            Text("Trips")
            Toggle(isOn: $showPastTrips) {
                Text("Show past trips...")
            }
            if showPastTrips {
                TripsList(trips: pastTrips, listTitle: "Past Trips")
            } else {
                TripsList(trips: futureTrips, listTitle: "Future Trips")
            }
            
        }
    }
}

struct TripsPage_Previews: PreviewProvider {
    static var previews: some View {
        TripsPage()
    }
}
