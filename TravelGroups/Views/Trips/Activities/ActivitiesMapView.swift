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
    @State private var region =  MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
    span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct ActivitiesMapView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesMapView()
    }
}
