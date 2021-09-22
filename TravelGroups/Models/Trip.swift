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

struct Trip: Identifiable, Hashable, Codable {
    var id: Int
    var name: String
    
    var address: Address
    
    var description: String
    
    var startDate: String
    var endDate: String
    
    var isFavoriteTrip: Bool
    
    var geocode: Geocode? = nil
    
    var headerPhoto: String
    
    var tripMembers: [User]
    
    mutating func setGeocode(geocode: Geocode) -> Void {
        self.geocode = geocode
    }
}
