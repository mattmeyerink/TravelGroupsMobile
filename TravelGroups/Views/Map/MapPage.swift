//
//  MapPage.swift
//  TravelGroups
//
//  Loads with a map containing markers representing trips you have taken
//
//  Created by Matthew Meyerink on 7/20/21.
//

import SwiftUI
import UIKit
import CoreLocation
import MapKit

struct MapPage: View {
    var body: some View {
        MapView()
            .edgesIgnoringSafeArea(.all)
    }
}

struct MapPage_Previews: PreviewProvider {
    static var previews: some View {
        MapPage()
    }
}
