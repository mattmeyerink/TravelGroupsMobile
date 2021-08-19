//
//  TripPin.swift
//  TravelGroups
//
//  Represents a trip pin on the map. Extends MKAnnotation from MapKit.
//
//  Created by Matthew Meyerink on 8/18/21.
//

import Foundation
import CoreLocation
import MapKit

class TripPin: NSObject, MKAnnotation {
    var title: String?
    var coordinate: CLLocationCoordinate2D
    var subtitle: String?
    
    init(title: String, geocode: Geocode, subtitle: String) {
        self.title = title
        self.coordinate = CLLocationCoordinate2D(latitude: geocode.latitude, longitude: geocode.longitude)
        self.subtitle = subtitle
    }
}
