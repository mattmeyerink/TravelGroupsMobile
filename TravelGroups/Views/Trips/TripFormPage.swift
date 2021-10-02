//
//  TripFormPage.swift
//  TravelGroups
//
//  View displaing the form to edit/add a new trip
//
//  Created by Matthew Meyerink on 8/6/21.
//

import SwiftUI

struct TripFormPage: View {
    var trip: Trip
    
    @State var formTripName: String = ""
    @State var formTripDescription: String = ""
    
    @State var formTripCity: String = ""
    @State var formTripState: String = ""
    @State var formTripPostalCode: String = ""
    @State var formTripCountry: String = ""
    
    @State var tripAdded: Bool = false
    
    @State var isShowingPhotoLibrary: Bool = false
    @State var headerImage = UIImage()
    
    
    var body: some View {
        Form {
            Section(header: Text("NAME")) {
                TextField("Name", text: $formTripName)
                TextField("Description", text: $formTripDescription)
            }
            
            Section(header: Text("ADDRESS")) {
                TextField("City", text: $formTripCity)
                TextField("State", text: $formTripState)
                TextField("Postal Code", text: $formTripPostalCode)
                TextField("Country", text: $formTripCountry)
            }
            
            Button(
                action: {self.tripAdded = true},
                label: {
                    HStack {
                        Spacer()
                        Text("Save Trip")
                        Spacer()
                        
                    }
                })
        }
            .navigationBarTitle(trip.name == "" ? "Add New Trip" : "Edit " + trip.name)
    }
}

struct TripFormPage_Previews: PreviewProvider {
    static var previews: some View {
        TripFormPage(trip: sampleTrips[0])
    }
}
