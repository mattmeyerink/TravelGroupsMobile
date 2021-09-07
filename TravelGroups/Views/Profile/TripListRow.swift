//
//  TripListRow.swift
//  TravelGroups
//
//  Represents a row in a list of trips on the profile page
//
//  Created by Matthew Meyerink on 9/6/21.
//

import SwiftUI

struct TripListRow: View {
    var trip: Trip
    
    var body: some View {
        HStack {
            Image(trip.headerPhoto)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
                .clipped()
            
            Text(trip.name)
                .font(.title2)
            
            Spacer()
        }
    }
}

struct TripListRow_Previews: PreviewProvider {
    static var previews: some View {
        TripListRow(trip: sampleTrips[0])
    }
}
