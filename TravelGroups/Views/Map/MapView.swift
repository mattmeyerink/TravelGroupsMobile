//
//  MapView.swift
//  TravelGroups
//
//  Created by Matthew Meyerink on 8/1/21.
//

import SwiftUI
import MapKit

struct MapView: View {
    var geocoder = Geocoder("20999 Greenbriar Lane, South Lyon, MI, 48178")
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 42.435841,
            longitude: -83.6407197
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


