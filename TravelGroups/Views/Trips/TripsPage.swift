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
    @State private var showPastTrips: Bool = false
    
    var body: some View {
        VStack {
            Text("Trips")
                .font(.largeTitle)
            
            Text("The Current Trip will go HERE!")
                .font(.largeTitle)
            
            HStack(spacing: 50) {
                Text("Show Past Trips")
                Toggle(isOn: $showPastTrips){}
                
                Text("Add New Trip")
                Button(action: {
                    print("Create new Trip")
                }) {
                    Image(systemName: "plus")
                }
            }
                .padding(.horizontal, 50)
            
            if showPastTrips {
                TripsList(trips: pastTrips, listTitle: "Past Trips")
            } else {
                TripsList(trips: futureTrips, listTitle: "Future Trips")
            }
            
        }
    }
}

struct TripsPage_Previews: PreviewProvider {
    static var previews: some View {
        TripsPage()
    }
}
