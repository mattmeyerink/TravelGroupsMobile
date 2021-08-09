//
//  LocationStructures.swift
//  TravelGroups
//
//  Contains the structures used in processing address data
//
//  Created by Matthew Meyerink on 8/8/21.
//

import Foundation

struct Geocode: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}
