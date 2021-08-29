//
//  TripsStore.swift
//  TravelGroups
//
//  Creates a store for trip data.
//  In the future this will be populated by the API and maintained in the app
//
//  Created by Matthew Meyerink on 8/28/21.
//

import Foundation

class TripsStore: ObservableObject {
    @Published var trips: [Trip]
    
    init(trips: [Trip] = []) {
        self.trips = trips
    }
}
