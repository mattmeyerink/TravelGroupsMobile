//
//  ActivitiesMapView.swift
//  TravelGroups
//
//  The map view to embed in an activity detail page
//
//  Created by Matthew Meyerink on 8/23/21.
//

import SwiftUI
import MapKit

struct ActivitiesMapView: View {
    var geocode: Geocode
    @State private var region =  MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear{
                self.region = MKCoordinateRegion(
                    center: CLLocationCoordinate2D(latitude: geocode.latitude, longitude: geocode.longitude),
                    span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
                )
            }
    }
}

struct ActivitiesMapView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesMapView(geocode: Geocode(latitude: 42.0, longitude: -82.0))
    }
}
