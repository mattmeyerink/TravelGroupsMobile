//
//  Address.swift
//  TravelGroups
//
//  Object representing an address
//
//  Created by Matthew Meyerink on 8/23/21.
//

import Foundation

struct Address: Hashable, Codable {
    var street: String?
    var city: String
    var state: String
    var country: String
    var postalCode: String
}
