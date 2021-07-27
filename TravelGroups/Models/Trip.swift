//
//  Trip.swift
//  TravelGroups
//
//  Structure representing a trip
//
//  Created by Matthew Meyerink on 7/22/21.
//

import Foundation

struct Trip: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    
    var city: String
    var state: String
    var country: String
    var postalCode: String
    
    var description: String
    
    var startDate: String
    var endDate: String
}
