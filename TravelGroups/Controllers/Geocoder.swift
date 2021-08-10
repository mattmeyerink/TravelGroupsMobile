//
//  Geocoder.swift
//  TravelGroups
//
//  Contains logic to geocode new addresses
//
//  Created by Matthew Meyerink on 8/8/21.
//

import Foundation
import CoreLocation

class Geocoder {
    lazy var geocoder = CLGeocoder()
    var address: String
    
    init(_ address: String) {
        self.address = address
        
        self.geocode(completion: {
            success, coordinate in
            
            if success {
                print(coordinate?.latitude)
                print(coordinate?.longitude)
            } else {
                print("There was an error in the geocoder")
            }
        })
    }
    
    func geocode(completion: @escaping (Bool, CLLocationCoordinate2D?) -> ()) -> Void {
        // Send the request to the geocoder
        geocoder.geocodeAddressString(self.address) { (placemarks, error) in
            
            if error != nil {
                // If the geocoder errored out log it and halt the completion
                print("There was an error within the geocoder")
                completion(false, nil)
            } else {
                
                var location: CLLocation?
                
                // Grab the first returned location in the response
                if let placemarks = placemarks, placemarks.count > 0 {
                    location = placemarks.first?.location
                }
                
                // Pull the latitude and logitude from the response
                if let location = location {
                    completion(true, location.coordinate)
                } else {
                    print("No location was found")
                    completion(false, nil)
                }
            }
        }
    }
}
