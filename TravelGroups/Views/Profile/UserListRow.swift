//
//  UserListRow.swift
//  TravelGroups
//
//  A row in the list of users for the followers or following page
//
//  Created by Matthew Meyerink on 9/3/21.
//

import SwiftUI

struct UserListRow: View {
    var user: User
    
    var body: some View {
        HStack {
            Image(user.profilePicture)
                .resizable()
                .clipShape(Circle())
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            
            Text(user.firstName)
            Text(user.lastName)
            
            Spacer()
        }
    }
}

struct UserListRow_Previews: PreviewProvider {
    static var previews: some View {
        UserListRow(user: sampleUsers[0])
    }
}
