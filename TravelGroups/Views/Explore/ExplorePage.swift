//
//  ExplorePage.swift
//  TravelGroups
//
//  Explore page contains suggested accounts to follow and friends trips
//
//  Created by Matthew Meyerink on 7/20/21.
//

import SwiftUI

struct ExplorePage: View {
    var body: some View {
        ScrollView {
            HStack {
                Text("Trips You Might Like")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.horizontal)
                Spacer()
            }
            TripHeadlineList(trips: sampleTrips)
                .padding(.leading)
            
            
            HStack {
                Text("Users You Might Know")
                    .font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal)
                Spacer()
            }
        }
            .navigationBarTitle("Explore")
    }
}

struct ExplorePage_Previews: PreviewProvider {
    static var previews: some View {
        ExplorePage()
    }
}
