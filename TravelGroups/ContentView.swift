//
//  ContentView.swift
//  TravelGroups
//
//  Created by Matthew Meyerink on 7/20/21.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .trips
    @ObservedObject var tripsStore: TripsStore
    @ObservedObject var activitiesStore: ActivitiesStore
    @ObservedObject var currentUser: CurrentUser
    
    enum Tab {
        case trips
        case map
        case explore
        case profile
    }
    
    var body: some View {
        TabView(selection: $selection) {
            NavigationView {
                TripsPage(tripsStore: tripsStore, activitiesStore: activitiesStore)
            }
                .tabItem{
                    Label("Trips", systemImage: "note.text")
                }
                .tag(Tab.trips)
            
            NavigationView {
                MapPage(tripsStore: tripsStore, activitiesStore: activitiesStore)
            }
                .tabItem{
                    Label("Map", systemImage: "globe")
                }
                .tag(Tab.map)
            
            NavigationView {
                ExplorePage()
            }
                .tabItem{
                    Label("Explore", systemImage: "magnifyingglass")
                }
                .tag(Tab.explore)
            
            NavigationView {
                ProfilePage(currentUser: currentUser, allMyPhotos: sampleTripImages)
            }
                .tabItem{
                    Label("Profile", systemImage: "person.circle")
                }
                    .tag(Tab.profile)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(
            tripsStore: TripsStore(trips: sampleTrips),
            activitiesStore: ActivitiesStore(),
            currentUser: CurrentUser(user: sampleUsers[0])
        )
    }
}
