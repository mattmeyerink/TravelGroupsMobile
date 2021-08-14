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
    
    var pastTrips: [Trip] = Array(sampleTrips[...4])
    var futureTrips: [Trip] = Array(sampleTrips[5...])
    
    var body: some View {
        VStack {
            HStack {
                Toggle(isOn: $showPastTrips){}
                Text("Trips")
                    .font(.largeTitle)
                NavigationLink (destination: TripFormPage(trip: generateBlankTrip())) {
                    Image(systemName: "plus")
                }
            }
            
            Text("Your FAVORITE Trip will go HERE!")
                .font(.largeTitle)
                .padding()
            
            showPastTrips ? Text("My Past Trips").font(.title) : Text("My Future Trips").font(.title)
        
            if showPastTrips {
                TripsList(trips: pastTrips)
            } else {
                TripsList(trips: futureTrips)
            }
        }
    }
}

struct TripsPage_Previews: PreviewProvider {
    static var previews: some View {
        TripsPage()
    }
}

// Returns a blank trip
func generateBlankTrip() -> Trip {
    return Trip(
        id: -1,
        name: "",
        city: "",
        state: "",
        country: "",
        postalCode: "",
        description: "",
        startDate: "",
        endDate: "",
        isFavoriteTrip: false,
        headerPhoto: ""
    )
}
