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
                .padding(.top)
            TripHeadlineList(trips: sampleTrips)
                .padding(.leading)
                .padding(.bottom)
            
            
            HStack {
                Text("Users You Might Know")
                    .font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal)
                Spacer()
            }
                .padding(.top)
            UserHeadlineList(users: sampleUsers)
                .padding(.leading)
        }
            .navigationBarTitle("Explore")
    }
}

struct ExplorePage_Previews: PreviewProvider {
    static var previews: some View {
        ExplorePage()
    }
}
