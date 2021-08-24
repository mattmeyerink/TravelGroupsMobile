//
//  Activity.swift
//  TravelGroups
//
//  Represents an activity on a trip
//
//  Created by Matthew Meyerink on 8/15/21.
//

import Foundation

struct Activity: Identifiable, Hashable, Codable {
    var id: Int
    
    var name: String
    var description: String
    
    var address: Address
    
    var date: String
    
    var price: Double
    
    var url: String
}
