//
//  MapViewController.swift
//  TravelGroups
//
//  Controls the map view. Contains logic for detail view for trip pins
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
        guard let annotation = annotation as? TripPin else {
            return nil
        }
        
        let identifier = "trip"
        var view: MKAnnotationView
        
        if let dequeuedView = mapView.dequeueReusableAnnotationView(
            withIdentifier: identifier) as? TravelPinAnnotationView {
            dequeuedView.annotation = annotation
            view = dequeuedView
        } else {
            view = TravelPinAnnotationView(
            annotation: annotation, reuseIdentifier: identifier)
            view.canShowCallout = true
            view.calloutOffset = CGPoint(x: -5, y: 5)
            view.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
        }
        
        return view
    }
}
