//
//  TripImage.swift
//  TravelGroups
//
//  Structure representing an image in the app
//
//  Created by Matthew Meyerink on 8/17/21.
//

import Foundation

struct TripImage: Identifiable, Hashable, Codable {
    var id: Int
    var name: String
    var url: String
}
