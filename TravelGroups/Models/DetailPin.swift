//
//  DetailPin.swift
//  TravelGroups
//
//  Represents a pin for a map view on a detail page
//
//  Created by Matthew Meyerink on 9/20/21.
//

import Foundation
import MapKit

struct DetailPin: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}
