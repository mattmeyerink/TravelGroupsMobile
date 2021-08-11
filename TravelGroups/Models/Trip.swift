//
//  Trip.swift
//  TravelGroups
//
//  Structure representing a trip
//
//  Created by Matthew Meyerink on 7/22/21.
//

import Foundation
import CoreLocation

struct Trip {
    var id: Int
    var name: String
    
    var city: String
    var state: String
    var country: String
    var postalCode: String
    
    var description: String
    
    var startDate: String
    var endDate: String
    
    var isFavoriteTrip: Bool
    
    var geocode: Geocode? = nil
    
    mutating func setGeocode(geocode: Geocode) -> Void {
        self.geocode = geocode
    }
}
