//
//  TripFormPage.swift
//  TravelGroups
//
//  View displaing the form to edit/add a new trip
//
//  Created by Matthew Meyerink on 8/6/21.
//

import SwiftUI

struct TripFormPage: View {
    var trip: Trip
    
    var body: some View {
        trip.name == "" ?
        Text("Add New Trip")
            .font(.largeTitle)
            .padding() :
        Text("Edit Trip")
            .font(.largeTitle)
            .padding()
    }
}

struct TripFormPage_Previews: PreviewProvider {
    static var previews: some View {
        TripFormPage(trip: sampleTrips[0])
    }
}
