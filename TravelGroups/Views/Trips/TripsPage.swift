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
    
    var favoriteTrip: Trip = getFavoriteTrip(trips: sampleTrips)
    
    var body: some View {
        VStack {
            HStack {
                Text("Trips")
                    .font(.largeTitle)
                NavigationLink (destination: TripFormPage(trip: generateBlankTrip())) {
                    Image(systemName: "plus")
                }
            }
            
            NavigationLink (destination: TripsDetailPage(trip: favoriteTrip)) {
                ZStack (alignment: .bottomLeading){
                    Image(favoriteTrip.headerPhoto)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 400, height: 200, alignment: .center)
                        .clipped()
                    
                    VStack (alignment: .leading){
                        Text(favoriteTrip.name)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        Text(favoriteTrip.description)
                            .fontWeight(.none)
                            .foregroundColor(Color.white)
                    }
                        .padding()
                }
            }
                        
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

// Returns the users favorite trip out of an array of trips
func getFavoriteTrip(trips: [Trip]) -> Trip {
    var favoriteTrip: Trip
    
    for trip in trips {
        if trip.isFavoriteTrip {
            favoriteTrip = trip
            return favoriteTrip
        }
    }
    
    return trips[0]
}
