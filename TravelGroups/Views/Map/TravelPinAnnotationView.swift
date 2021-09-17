//
//  TravelPinAnnotationView.swift
//  TravelGroups
//
//  View to override the built in annotation view
//  Makes it possible to cluster map markers
//
//  Created by Matthew Meyerink on 9/8/21.
//

import MapKit

class TravelPinAnnotationView: MKMarkerAnnotationView {
    override var annotation: MKAnnotation? {
        willSet {
            self.displayPriority = .required
        }
    }
}

