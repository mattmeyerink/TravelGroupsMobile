//
//  CurrentUser.swift
//  TravelGroups
//
//  Observable object to store the data for the current user of the app
//
//  Created by Matthew Meyerink on 8/29/21.
//

import Foundation

class CurrentUser: ObservableObject {
    @Published var user: User
    
    init(user: User) {
        self.user = user
    }
}
