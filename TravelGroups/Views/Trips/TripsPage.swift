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
    var body: some View {
        VStack {
            Text("This will be the trips page!")
            TripsList()
        }
    }
}

struct TripsPage_Previews: PreviewProvider {
    static var previews: some View {
        TripsPage()
    }
}
