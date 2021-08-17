//
//  ActivitiesList.swift
//  TravelGroups
//
//  Represents the list view of activities.
//  Located on the trip detail page
//
//  Created by Matthew Meyerink on 8/16/21.
//

import SwiftUI

struct ActivitiesList: View {
    var activities: [Activity]
    
    var body: some View {
        ForEach(activities) { activity in
            ActivityRow(activity: activity)
        }
    }
}

struct ActivitiesList_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesList(activities: sampleActivities)
    }
}
