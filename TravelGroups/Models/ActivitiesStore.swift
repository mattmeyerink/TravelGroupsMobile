//
//  ActivityStore.swift
//  TravelGroups
//
//  A store for all of the activities for the user
//  This will be populated using the api and mainainted in the app
//
//  Created by Matthew Meyerink on 8/28/21.
//

import Foundation

class ActivitiesStore: ObservableObject {
    @Published var activities: [Activity]
    
    init(activities: [Activity] = []) {
        self.activities = activities
    }
}

