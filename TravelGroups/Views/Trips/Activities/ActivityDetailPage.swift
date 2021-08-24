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
    
    var body: some View {
        ScrollView {
            HStack {
                VStack (alignment: .leading) {
                    Text("Activity Information")
                        .font(.title)
                    Text(activity.description)
                    Text("Activity Date: " + activity.date)
                    Text("Location: " + generateCleanAddress(address: activity.address))
                }
                    .padding()
                Spacer()
            }
            ActivitiesMapView(region: createRegionForMap(geocode: activity.geocode!))
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

func createRegionForMap(geocode: Geocode) -> MKCoordinateRegion {
    return MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: geocode.latitude, longitude: geocode.longitude), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
}
