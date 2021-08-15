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
    var activities: [Activity]
    
    var body: some View {
        ScrollView {
            HStack {
                VStack (alignment: .leading) {
                    Text(trip.description)
                        .padding()
                    
                    VStack {
                        Text("Trip Information")
                            .font(.title)
                        Text("Start Date: " + trip.startDate)
                        Text("End Date: " + trip.endDate)
                        Text("Location: " + generateCleanAddress(trip: trip))
                    }
                        .padding()
                    
                    Text("Activities")
                        .font(.title)
                    
                    Text("Photos")
                        .font(.title)
                }
                    .padding()
                Spacer()
            }
        }
            .navigationBarTitle(trip.name)
            .navigationBarItems(
                trailing:
                    NavigationLink(destination: TripFormPage(trip: trip)) {
                        Text("Edit")
                    }
            )
    }
}

struct TripsDetailPage_Previews: PreviewProvider {
    static var previews: some View {
        TripsDetailPage(trip: sampleTrips[0], activities: )
    }
}

func generateCleanAddress(trip: Trip) -> String {
    var cleanAddress = ""
    if (trip.city != "") {
        cleanAddress += trip.city + ", "
    }
    
    if (trip.state != "") {
        cleanAddress += trip.state + ", "
    }
    
    if (trip.country != "") {
        cleanAddress += trip.country + " "
    }
    
    if (trip.postalCode != "") {
        cleanAddress += trip.postalCode
    }
    
    return cleanAddress
}
