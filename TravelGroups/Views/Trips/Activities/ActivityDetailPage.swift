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
import MapKit

struct ActivityDetailPage: View {
    var activity: Activity
    var images: [TripImage]
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    VStack (alignment: .leading) {
                        Text("Activity Information")
                            .font(.title)
                        Text(activity.description)
                        Text("Activity Date: " + activity.date)
                        Text("Location: " + generateCleanAddress(address: activity.address))
                        Link(activity.url, destination: URL(string: activity.url)!)
                    }
                        .padding()
                    Spacer()
                }
                ActivitiesMapView()
                    .frame(height: 300)
                VStack {
                    HStack {
                        Text("Photos")
                            .font(.title)
                        Spacer()
                    }
                    PhotosGrid(images: images)
                }
                    .padding()
            }
        }
            .navigationBarTitle(activity.name)
            .navigationBarItems(trailing: NavigationLink(destination: ActivityFormPage()) {Text("Edit")})
    }
}

struct ActivityDetailPage_Previews: PreviewProvider {
    static var previews: some View {
        ActivityDetailPage(activity: sampleActivities[0], images: sampleTripImages)
    }
}
