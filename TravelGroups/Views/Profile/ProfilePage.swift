//
//  ProfilePage.swift
//  TravelGroups
//
//  Profile page contianing user information, trip statistics, and following/followers
//
//  Created by Matthew Meyerink on 7/20/21.
//

import SwiftUI

struct ProfilePage: View {
    @ObservedObject var currentUser: CurrentUser
    var allMyPhotos: [TripImage]
    
    var body: some View {
        ScrollView {
            VStack {
                Image(currentUser.user.profilePicture)
                    .resizable()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 250)
                    .shadow(radius: 7)
                
                HStack {
                    Text(currentUser.user.firstName)
                        .fontWeight(.bold)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Text(currentUser.user.lastName)
                        .fontWeight(.bold)
                        .font(.title)
                }
                
                HStack {
                    Text("20 Trips")
                        .fontWeight(.semibold)
                        .padding()
                    Text("20 Followers")
                        .fontWeight(.semibold)
                        .padding()
                    Text("20 Following")
                        .fontWeight(.semibold)
                        .padding()
                }
                
                VStack {
                    HStack {
                        Text("All Photos")
                            .font(.title)
                        Spacer()
                    }
                    PhotosGrid(images: allMyPhotos)
                }
                    .padding()
            }
        }
    }
}

struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage(currentUser: CurrentUser(user: sampleUsers[0]), allMyPhotos: sampleTripImages)
    }
}
