//
//  UserHeadlineList.swift
//  TravelGroups
//
//  Created by Matthew Meyerink on 8/29/21.
//

import SwiftUI

struct UserHeadlineList: View {
    var users: [User]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 0) {
                ForEach(users) { user in
                    UserHeadline(user: user)
                }
            }
        }
    }
}

struct UserHeadlineList_Previews: PreviewProvider {
    static var previews: some View {
        UserHeadlineList(users: sampleUsers)
    }
}
