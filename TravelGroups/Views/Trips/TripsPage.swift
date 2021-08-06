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
        NavigationView {
            VStack {
                HStack {
                    Toggle(isOn: $showPastTrips){}
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
                
                showPastTrips ? Text("My Past Trips").font(.title) : Text("My Future Trips").font(.title)
            
                if showPastTrips {
                    TripsList(trips: pastTrips)
                } else {
                    TripsList(trips: futureTrips)
                }
            }
        }
    }
}

struct TripsPage_Previews: PreviewProvider {
    static var previews: some View {
        TripsPage()
    }
}
