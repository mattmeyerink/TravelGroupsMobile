//
//  ActivityPin.swift
//  TravelGroups
//
//  MKAnnotation to represent an activity on the map
//
//  Created by Matthew Meyerink on 9/17/21.
//

import Foundation
import CoreLocation
import MapKit

class ActivityPin: NSObject, MKAnnotation {
    var title: String?
    var coordinate: CLLocationCoordinate2D
    var subtitle: String?
    
    init(title: String, geocode: Geocode, subtitle: String) {
        self.title = title
        self.coordinate = CLLocationCoordinate2D(latitude: geocode.latitude, longitude: geocode.longitude)
        self.subtitle = subtitle
    }
}
