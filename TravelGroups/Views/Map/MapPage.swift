//
//  MapPage.swift
//  TravelGroups
//
//  Loads with a map containing markers representing trips you have taken
//
//  Created by Matthew Meyerink on 7/20/21.
//

import SwiftUI
import UIKit
import CoreLocation
import MapKit

struct MapPage: View {
    @ObservedObject var tripsStore: TripsStore
    
    var body: some View {
        NavigationView {
            MapView(pins: generatePinsFromTrips(trips: tripsStore.trips, activities: sampleActivities))
                .edgesIgnoringSafeArea(.all)
        }
    }
}

struct MapPage_Previews: PreviewProvider {
    static var previews: some View {
        MapPage(tripsStore: TripsStore(trips: sampleTrips))
    }
}

func generatePinsFromTrips(trips: [Trip], activities: [Activity]) -> [MKAnnotation] {
    var pins: [MKAnnotation] = []
    
    for trip in trips {
        pins.append(TripPin(title: trip.name, geocode: trip.geocode!, subtitle: trip.description))
    }
    
    for activity in activities {
        pins.append(ActivityPin(title: activity.name, geocode: activity.geocode!, subtitle: activity.description))
    }
    
    return pins
}
