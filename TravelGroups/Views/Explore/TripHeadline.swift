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
                .aspectRatio(contentMode: .fill)
                .frame(width: 155, height: 155)
                .clipped()
                .overlay(Rectangle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 7)
                .padding(.horizontal)
                .padding(.top)
                .padding(.bottom, 10)
            Text(trip.address.city + ", ")
                .padding(.leading)
            Text(trip.address.state)
                .padding(.leading)
        }
    }
}

struct TripHeadline_Previews: PreviewProvider {
    static var previews: some View {
        TripHeadline(trip: sampleTrips[0])
    }
}
