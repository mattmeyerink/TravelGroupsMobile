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
var sampleActivities: [Activity] = getSampleActivityData()
var sampleTripImages: [TripImage] = getSampleTripImageData()

func getSampleTripData() -> [Trip] {
    var trips: [Trip] = []
    var sampleTrip: Trip = Trip(
        id: 1,
        name: "Summer 2021 CA Trip",
        address: Address(street: "", city: "Hermosa Beach", state: "CA", country: "US", postalCode: "90254"),
        description: "Trip to see Erika!",
        startDate: "07/13/2021",
        endDate: "08/06/2021",
        isFavoriteTrip: false,
        headerPhoto: "MalibuHike"
    )
    var sampleGeocode: Geocode = Geocode(latitude: 33.862141, longitude: -118.400009)
    sampleTrip.setGeocode(geocode: sampleGeocode)
    trips.append(sampleTrip)
    
    sampleTrip = Trip(
        id: 2,
        name: "Summer 2021 TX Trip",
        address: Address(street: "", city: "Dallas", state: "TX", country: "US", postalCode: "75204"),
        description: "Trip to see Kyle",
        startDate: "07/13/2021",
        endDate: "08/06/2021",
        isFavoriteTrip: false,
        headerPhoto: "DCMonument"
    )
    sampleGeocode = Geocode(latitude: 32.779167, longitude: -96.808891)
    sampleTrip.setGeocode(geocode: sampleGeocode)
    trips.append(sampleTrip)
    
    sampleTrip = Trip(
        id: 3,
        name: "Summer 2021 FL Trip",
        address: Address(street: "", city: "Estero", state: "FL", country: "US", postalCode: "33928"),
        description: "Golf trip with Jason!",
        startDate: "07/13/2021",
        endDate: "08/06/2021",
        isFavoriteTrip: false,
        headerPhoto: "JasonAndMe"
    )
    sampleGeocode = Geocode(latitude: 26.438135, longitude: -81.806755)
    sampleTrip.setGeocode(geocode: sampleGeocode)
    trips.append(sampleTrip)
    
    sampleTrip = Trip(
        id: 4,
        name: "Sleeping Bear Trip 2021 Round One",
        address: Address(street: "", city: "Glen Arbor", state: "MI", country: "US", postalCode: "49636"),
        description: "First trip to sleeping bear with Erika!",
        startDate: "07/13/2021",
        endDate: "08/06/2021",
        isFavoriteTrip: false,
        headerPhoto: "ErikaUpNorth"
    )
    sampleGeocode = Geocode(latitude: 44.897739, longitude: -85.991600)
    sampleTrip.setGeocode(geocode: sampleGeocode)
    trips.append(sampleTrip)
    
    sampleTrip = Trip(
        id: 5,
        name: "Sleeping Bear Trip 2021 Round Two",
        address: Address(street: "", city: "Glen Arbor", state: "MI", country: "US", postalCode: "49636"),
        description: "Second trip to sleeping bear dunes with Mom!",
        startDate: "07/13/2021",
        endDate: "08/06/2021",
        isFavoriteTrip: false,
        headerPhoto: "PaddleBoarding"
    )
    sampleGeocode = Geocode(latitude: 44.897739, longitude: -85.991600)
    sampleTrip.setGeocode(geocode: sampleGeocode)
    trips.append(sampleTrip)
    
    sampleTrip = Trip(
        id: 6,
        name: "Harry Potter World",
        address: Address(street: "", city: "Orlando", state: "FL", country: "US", postalCode: "90254"),
        description: "Trip to Harry Potter World!",
        startDate: "07/13/2021",
        endDate: "08/06/2021",
        isFavoriteTrip: false,
        headerPhoto: "JasonAndMe"
    )
    sampleGeocode = Geocode(latitude: 28.538336, longitude: -81.379234)
    sampleTrip.setGeocode(geocode: sampleGeocode)
    trips.append(sampleTrip)
    
    sampleTrip = Trip(
        id: 7,
        name: "London Trip",
        address: Address(street: "", city: "London", state: "", country: "UK", postalCode: ""),
        description: "Seeing the sights in London",
        startDate: "07/13/2021",
        endDate: "08/06/2021",
        isFavoriteTrip: false,
        headerPhoto: "ErikaUpNorth"
    )
    sampleGeocode = Geocode(latitude: 51.507351, longitude: -0.127758)
    sampleTrip.setGeocode(geocode: sampleGeocode)
    trips.append(sampleTrip)
    
    sampleTrip = Trip(
        id: 8,
        name: "Big Sur",
        address: Address(street: "", city: "Big Sur", state: "CA", country: "US", postalCode: "33928"),
        description: "Hiking in Big Sur",
        startDate: "07/13/2021",
        endDate: "08/06/2021",
        isFavoriteTrip: false,
        headerPhoto: "MalibuHike"
    )
    sampleGeocode = Geocode(latitude: 36.252880, longitude: -121.787354)
    sampleTrip.setGeocode(geocode: sampleGeocode)
    trips.append(sampleTrip)
    
    sampleTrip = Trip(
        id: 9,
        name: "Sleeping Bear Trip Again",
        address: Address(street: "", city: "Glen Arbor", state: "MI", country: "US", postalCode: "49636"),
        description: "Going back because this place is awesome!",
        startDate: "07/13/2021",
        endDate: "08/06/2021",
        isFavoriteTrip: false,
        headerPhoto: "ErikaUpNorth"
    )
    sampleGeocode = Geocode(latitude: 44.897739, longitude: -85.991600)
    sampleTrip.setGeocode(geocode: sampleGeocode)
    trips.append(sampleTrip)
    
    sampleTrip = Trip(
        id: 10,
        name: "Hilton Head Trip",
        address: Address(street: "", city: "Hilton Head", state: "SC", country: "US", postalCode: ""),
        description: "Trip with the family!",
        startDate: "07/13/2021",
        endDate: "08/06/2021",
        isFavoriteTrip: false,
        headerPhoto: "ErikaUpNorth"
    )
    sampleGeocode = Geocode(latitude: 32.178890, longitude: -80.743057)
    sampleTrip.setGeocode(geocode: sampleGeocode)
    trips.append(sampleTrip)
    
    return trips
}

func getSampleActivityData() -> [Activity] {
    var activities: [Activity] = []
    
    var sampleActivity: Activity = Activity(
        id: 1,
        name: "Universal Studios",
        description: "A theme park with fantastic attractions such as HARRY POTTER WORLD!",
        address: Address(street: "6000 Universal Blvd", city: "Orlando", state: "FL", country: "US", postalCode: "32819"),
        date: "8/21/21",
        price: 0,
        url: "https://www.universalorlando.com/web/en/us/plan-your-visit/hours-information/directions-and-parking"
    )
    var sampleGeocode: Geocode = Geocode(latitude: 28.538336, longitude: -81.379234)
    sampleActivity.setGeocode(geocode: sampleGeocode)
    activities.append(sampleActivity)
    
    sampleActivity = Activity(
        id: 2,
        name: "Solstice Canyon Hike",
        description: "A beautiful loop hike in Malibu.",
        address: Address(street: "3455 Solstice Canyon Rd", city: "Malibu", state: "CA", country: "US", postalCode: "90265"),
        date: "8/21/21",
        price: 0,
        url: "https://www.nps.gov/samo/planyourvisit/solsticecanyon.htm"
    )
    sampleGeocode = Geocode(latitude: 34.0259, longitude: -118.7798)
    sampleActivity.setGeocode(geocode: sampleGeocode)
    activities.append(sampleActivity)
    
    return activities
}

func getSampleTripImageData() -> [TripImage] {
    var tripImages: [TripImage] = []
    
    var sampleTripImage: TripImage = TripImage(id: 1, name: "Ann Arbor", url: "AnnArbor")
    tripImages.append(sampleTripImage)
    
    sampleTripImage = TripImage(id: 2, name: "DC Monument", url: "DCMonument")
    tripImages.append(sampleTripImage)
    
    sampleTripImage = TripImage(id: 3, name: "Erika up North", url: "ErikaUpNorth")
    tripImages.append(sampleTripImage)
    
    sampleTripImage = TripImage(id: 4, name: "Jason and Me", url: "JasonAndMe")
    tripImages.append(sampleTripImage)
    
    sampleTripImage = TripImage(id: 5, name: "Malibu Hike", url: "MalibuHike")
    tripImages.append(sampleTripImage)
    
    sampleTripImage = TripImage(id: 6, name: "Paddleboarding", url: "Paddleboarding")
    tripImages.append(sampleTripImage)
    
    sampleTripImage = TripImage(id: 7, name: "Pawnee, Indiana City Hall", url: "Pawnee")
    tripImages.append(sampleTripImage)
    
    return tripImages
}
