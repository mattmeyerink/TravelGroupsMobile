//
//  TravelPinAnnotationView.swift
//  TravelGroups
//
//  View to override the built in annotation view
//  Makes it possible to cluster map markers
//
//  Created by Matthew Meyerink on 9/8/21.
//

import SwiftUI
import MapKit

class TravelPinAnnotationView: MKMarkerAnnotationView {
    static let preferredClusteringIdentifier = Bundle.main.bundleIdentifier! + ".TripPinAnnotationView"
    
    override init(annotation: MKAnnotation?, reuseIdentifier: String?) {
        super.init(annotation: annotation, reuseIdentifier: reuseIdentifier)
        clusteringIdentifier = TravelPinAnnotationView.preferredClusteringIdentifier
        collisionMode = .circle
    }
   
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) did not get implemented bro. Looks like you'll need to do it now")
    }
    
    override var annotation: MKAnnotation? {
        willSet {
            clusteringIdentifier = TravelPinAnnotationView.preferredClusteringIdentifier
        }
    }
}
