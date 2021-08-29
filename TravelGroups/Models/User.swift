//
//  User.swift
//  TravelGroups
//
//  Represents a single user of the app
//
//  Created by Matthew Meyerink on 8/29/21.
//

import Foundation

struct User: Identifiable, Hashable, Codable {
    var id: Int
    var firstName: String
    var lastName: String
    var email: String
    var username: String
    var profilePicture: String
}
