//
//  UserHeadline.swift
//  TravelGroups
//
//  A single object to represent a user on the explore page
//
//  Created by Matthew Meyerink on 8/29/21.
//

import SwiftUI

struct UserHeadline: View {
    var user: User
    
    var body: some View {
        VStack {
            Image(user.profilePicture)
                .resizable()
                .frame(width: 155, height: 155)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            Text(user.username)
        }
    }
}

struct UserHeadline_Previews: PreviewProvider {
    static var previews: some View {
        UserHeadline(user: sampleUsers[0])
    }
}
