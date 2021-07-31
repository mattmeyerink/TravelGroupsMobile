//
//  MapPage.swift
//  TravelGroups
//
//  Loads with a map containing markers representing trips you have taken
//
//  Created by Matthew Meyerink on 7/20/21.
//

import SwiftUI

struct MapPage: View {
    var body: some View {
        VStack {
            Text("Map")
                .font(.largeTitle)
            Text("This will be the map page!")
        }
    }
}

struct MapPage_Previews: PreviewProvider {
    static var previews: some View {
        MapPage()
    }
}
