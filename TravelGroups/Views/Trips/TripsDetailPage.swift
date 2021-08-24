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
    var images: [TripImage]
    
    var body: some View {
        ScrollView {
            HStack {
                VStack (alignment: .leading) {
                    Text("Trip Information")
                        .font(.title)
                        .padding(.leading)
                    Text(trip.description)
                        .padding(.leading)
                    Text("Start Date: " + trip.startDate)
                        .padding(.leading)
                    Text("End Date: " + trip.endDate)
                        .padding(.leading)
                    Text("Location: " + generateCleanAddress(address: trip.address))
                        .padding(.leading)
                    
                    HStack {
                        Text("Activities")
                            .font(.title)
                            .padding(.leading)
                        Spacer()
                        NavigationLink(destination: ActivityFormPage()) {
                            Image(systemName: "plus")
                        }
                            .padding(.trailing)
                    }
                    
                    ActivitiesList(activities: activities)
                    
                    Text("Photos")
                        .font(.title)
                        .padding()
                    PhotosGrid(images: images)
                }
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
        TripsDetailPage(trip: sampleTrips[0], activities: sampleActivities, images: sampleTripImages)
    }
}

func generateCleanAddress(address: Address) -> String {
    var cleanAddress = ""
    if (address.street != "") {
        cleanAddress += address.street! + ", "
    }
    
    if (address.city != "") {
        cleanAddress += address.city + ", "
    }
    
    if (address.state != "") {
        cleanAddress += address.state + ", "
    }
    
    if (address.country != "") {
        cleanAddress += address.country + " "
    }
    
    if (address.postalCode != "") {
        cleanAddress += address.postalCode
    }
    
    return cleanAddress
}
