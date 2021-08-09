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
    }
    
    func geocode() -> Geocode {
        // Initialize geocode to return
        var outputGeocode = Geocode(latitude: 0, longitude: 0, error: "")
        
        // Send the request to the geocoder
        geocoder.geocodeAddressString(self.address) { (placemarks, error) in
            
            // Check to ensure the geocoder didn't error out
            if error != nil {
                outputGeocode.error = "There was an error inside the Geocoder"
            } else {
                var location: CLLocation?
                
                // Grab the first returned location in the response
                if let placemarks = placemarks, placemarks.count > 0 {
                    location = placemarks.first?.location
                }
                
                // Pull the latitude and logitude from the response
                if let location = location {
                    outputGeocode.latitude = location.coordinate.latitude
                    outputGeocode.latitude = location.coordinate.longitude
                } else {
                    outputGeocode.error = "No location was found"
                }
            }
        }
        
        return outputGeocode
    }
}
