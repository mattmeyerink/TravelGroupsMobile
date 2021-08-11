//
//  LoadSampleData.swift
//  TravelGroups
//
//  Method to create sample trip data for the app
//  For development purposes only
//
//  Created by Matthew Meyerink on 7/23/21.
//

import Foundation

var sampleTrips: [Trip] = getSampleTripData()

func getSampleTripData() -> [Trip] {
    var trips: [Trip] = []
    var sampleTrip: Trip = Trip(
        id: 1,
        name: "Summer 2021 CA Trip",
        city: "Hermosa Beach",
        state: "CA",
        country: "US",
        postalCode: "90254",
        description: "Trip to see Erika!",
        startDate: "07/13/2021",
        endDate: "08/06/2021",
        isFavoriteTrip: false
    )
    trips.append(sampleTrip)
    
    sampleTrip = Trip(
        id: 2,
        name: "Summer 2021 TX Trip",
        city: "Dallas",
        state: "TX",
        country: "US",
        postalCode: "75204",
        description: "Trip to see Kyle",
        startDate: "07/13/2021",
        endDate: "08/06/2021",
        isFavoriteTrip: false
    )
    trips.append(sampleTrip)
    
    sampleTrip = Trip(
        id: 3,
        name: "Summer 2021 FL Trip",
        city: "Estero",
        state: "FL",
        country: "US",
        postalCode: "33928",
        description: "Golf trip with Jason!",
        startDate: "07/13/2021",
        endDate: "08/06/2021",
        isFavoriteTrip: false
    )
    trips.append(sampleTrip)
    
    sampleTrip = Trip(
        id: 4,
        name: "Sleeping Bear Trip 2021 Round One",
        city: "Glen Arbor",
        state: "MI",
        country: "US",
        postalCode: "49636",
        description: "First trip to sleeping bear with Erika!",
        startDate: "07/13/2021",
        endDate: "08/06/2021",
        isFavoriteTrip: false
    )
    trips.append(sampleTrip)
    
    sampleTrip = Trip(
        id: 5,
        name: "Sleeping Bear Trip 2021 Round Two",
        city: "Glen Arbor",
        state: "MI",
        country: "US",
        postalCode: "49636",
        description: "Second trip to sleeping bear dunes with Mom!",
        startDate: "07/13/2021",
        endDate: "08/06/2021",
        isFavoriteTrip: false
    )
    trips.append(sampleTrip)
    
    sampleTrip = Trip(
        id: 6,
        name: "Harry Potter World",
        city: "Orlando",
        state: "FL",
        country: "US",
        postalCode: "90254",
        description: "Trip to Harry Potter World!",
        startDate: "07/13/2021",
        endDate: "08/06/2021",
        isFavoriteTrip: false
    )
    trips.append(sampleTrip)
    
    sampleTrip = Trip(
        id: 7,
        name: "London Trip",
        city: "London",
        state: "",
        country: "UK",
        postalCode: "90254",
        description: "Seeing the sights in London",
        startDate: "07/13/2021",
        endDate: "08/06/2021",
        isFavoriteTrip: false
    )
    trips.append(sampleTrip)
    
    sampleTrip = Trip(
        id: 8,
        name: "Big Sur",
        city: "Big Sur",
        state: "CA",
        country: "US",
        postalCode: "33928",
        description: "Hiking in Big Sur",
        startDate: "07/13/2021",
        endDate: "08/06/2021",
        isFavoriteTrip: false
    )
    trips.append(sampleTrip)
    
    sampleTrip = Trip(
        id: 9,
        name: "Sleeping Bear Trip Again",
        city: "Glen Arbor",
        state: "MI",
        country: "US",
        postalCode: "49636",
        description: "Going back because this place is awesome!",
        startDate: "07/13/2021",
        endDate: "08/06/2021",
        isFavoriteTrip: false
    )
    trips.append(sampleTrip)
    
    sampleTrip = Trip(
        id: 10,
        name: "Hilton Head Trip",
        city: "Hilton Head",
        state: "SC",
        country: "US",
        postalCode: "",
        description: "Trip with the family!",
        startDate: "07/13/2021",
        endDate: "08/06/2021",
        isFavoriteTrip: false
    )
    trips.append(sampleTrip)
    
    return trips
}

