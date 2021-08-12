//
//  MapView.swift
//  TravelGroups
//
//  The map view for the app. This is based the UIKit map view.
//
//  Created by Matthew Meyerink on 8/1/21.
//

import SwiftUI
import MapKit
import UIKit

struct MapView: UIViewRepresentable {
    var pins: [MKAnnotation]
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        let mapView = MKMapView()
        return mapView
    }
    
    func updateUIView(_ view: MKMapView, context: UIViewRepresentableContext<MapView>) {
        view.addAnnotations(pins)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(pins: [])
    }
}


