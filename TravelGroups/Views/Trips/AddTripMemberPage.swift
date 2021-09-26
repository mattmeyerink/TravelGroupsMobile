//
//  AddTripMemberPage.swift
//  TravelGroups
//
//  Page with form to add a user to the trip.
//  Supports adding multiple users to the trip.
//
//  Created by Matthew Meyerink on 9/25/21.
//

import SwiftUI

struct AddTripMemberPage: View {
    var trip: Trip
    
    var body: some View {
        Text("This will be the add trip member page")
            .navigationBarTitle("Add Trip Member")
    }
}

struct AddTripMemberPage_Previews: PreviewProvider {
    static var previews: some View {
        AddTripMemberPage(trip: sampleTrips[0])
    }
}
