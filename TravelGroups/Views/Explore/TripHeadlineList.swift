//
//  TripHeadlineList.swift
//  TravelGroups
//
//  A horizontal list for suggested trips
//
//  Created by Matthew Meyerink on 8/29/21.
//

import SwiftUI

struct TripHeadlineList: View {
    var trips: [Trip]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 0) {
                ForEach(trips) { trip in
                    TripHeadline(trip: trip)
                }
            }
        }
    }
}

struct TripHeadlineList_Previews: PreviewProvider {
    static var previews: some View {
        TripHeadlineList(trips: sampleTrips)
    }
}
