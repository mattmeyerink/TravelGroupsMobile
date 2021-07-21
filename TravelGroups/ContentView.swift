//
//  ContentView.swift
//  TravelGroups
//
//  Created by Matthew Meyerink on 7/20/21.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .trips
    
    enum Tab {
        case trips
        case map
        case explore
        case profile
    }
    
    var body: some View {
        TabView(selection: $selection) {
            TripsPage()
                .tabItem{
                    Label("Trips", systemImage: "star")
                }
                .tag(Tab.trips)
            
            MapPage()
                .tabItem{
                    Label("Map", systemImage: "star")
                }
                .tag(Tab.map)
            
            ExplorePage()
                .tabItem{
                    Label("Explore", systemImage: "star")
                }
                .tag(Tab.explore)
            
            ProfilePage()
                .tabItem{
                    Label("Profile", systemImage: "star")
                }
                .tag(Tab.profile)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
