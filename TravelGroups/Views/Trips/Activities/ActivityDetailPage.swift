//
//  ActivityDetailPage.swift
//  TravelGroups
//
//  Detail page for a single activity
//
//  Created by Matthew Meyerink on 8/17/21.
//

import SwiftUI
import UIKit

struct ActivityDetailPage: View {
    var activity: Activity
    
    var body: some View {
        ScrollView {
            Text(activity.name)
                .font(.title)
        }
            .navigationBarTitle(activity.name)
        .navigationBarItems(trailing: NavigationLink(destination: ActivityFormPage()) {Text("Edit")})
        
    }
}

struct ActivityDetailPage_Previews: PreviewProvider {
    static var previews: some View {
        ActivityDetailPage(activity: sampleActivities[0])
    }
}
