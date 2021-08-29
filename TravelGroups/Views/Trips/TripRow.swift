//
//  TripRow.swift
//  TravelGroups
//
//  This view displays one row in a list of trips
//
//  Created by Matthew Meyerink on 7/22/21.
//

import SwiftUI
import UIKit

struct TripRow: View {
    var trip: Trip
    
    var body: some View {
        HStack {
            Text(trip.name)
                .fontWeight(.none)
                .font(.system(size: 20))
                .foregroundColor(.black)
            Spacer()
            Image(systemName: "chevron.right")
                .foregroundColor(.black)
        }
            .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.black)
        )
    }
}

struct TripRow_Previews: PreviewProvider {
    static var previews: some View {
        TripRow(trip: sampleTrips[0])
    }
}
