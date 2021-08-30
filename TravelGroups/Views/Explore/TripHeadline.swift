//
//  TripHeadline.swift
//  TravelGroups
//
//  A single object to represent a trip on the explore page
//
//  Created by Matthew Meyerink on 8/29/21.
//

import SwiftUI

struct TripHeadline: View {
    var trip: Trip
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(trip.headerPhoto)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(trip.name)
        }
    }
}

struct TripHeadline_Previews: PreviewProvider {
    static var previews: some View {
        TripHeadline(trip: sampleTrips[0])
    }
}
