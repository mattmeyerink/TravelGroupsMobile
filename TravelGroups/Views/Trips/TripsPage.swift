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
            HStack {
                Text("Trips")
                    .font(.largeTitle)
                
                Button(action: {
                    print("Create new Trip")
                }) {
                    Image(systemName: "plus")
                }
            }
            
            Text("Your FAVORITE Trip will go HERE!")
                .font(.largeTitle)
                .padding()
            
            HStack {
                showPastTrips ? Text("My Past Trips") : Text("My Future Trips")
                Toggle(isOn: $showPastTrips){}
            }
                .padding()
        
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
