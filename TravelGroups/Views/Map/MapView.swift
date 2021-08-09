//
//  MapView.swift
//  TravelGroups
//
//  Created by Matthew Meyerink on 8/1/21.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 42.4606,
            longitude: 83.6516
        ),
        span: MKCoordinateSpan(
            latitudeDelta: 10,
            longitudeDelta: 10
        )
    )
    
    var body: some View {
        Map(
            coordinateRegion: $region,
            interactionModes: MapInteractionModes.all
        )
            .edgesIgnoringSafeArea(.all)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
