//
//  TravelGroupsApp.swift
//  TravelGroups
//
//  Main Travel App. It all starts here!!!
//
//  Created by Matthew Meyerink on 7/3/21.
//

import SwiftUI

@main
struct TravelGroupsApp: App {
    @StateObject private var tripsStore = TripsStore(trips: sampleTrips)
    @StateObject private var activitiesStore = ActivitiesStore(activities: sampleActivities)
    var body: some Scene {
        WindowGroup {
            ContentView(tripsStore: tripsStore, activitiesStore: activitiesStore)
        }
    }
}
