//
//  MapViewController.swift
//  TravelGroups
//
//  Created by Matthew Meyerink on 8/26/21.
//

import Foundation
import MapKit

class MapViewCoordinator: NSObject, MKMapViewDelegate {
    var mapViewController: MapView
    
    init(_ controller: MapView) {
        self.mapViewController = controller
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        let annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "customView")
        annotationView.canShowCallout = true
        return annotationView
    }
}
