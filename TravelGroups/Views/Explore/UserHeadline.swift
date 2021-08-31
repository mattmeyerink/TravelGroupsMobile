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
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .aspectRatio(contentMode: .fill)
                .frame(height: 155)
                .shadow(radius: 7)
            Text(user.username)
        }
        .padding(.horizontal)
    }
}

struct UserHeadline_Previews: PreviewProvider {
    static var previews: some View {
        UserHeadline(user: sampleUsers[0])
    }
}
