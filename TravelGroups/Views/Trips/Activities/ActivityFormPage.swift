//
//  ActivityFormPage.swift
//  TravelGroups
//
//  Form to add and edit activities
//
//  Created by Matthew Meyerink on 8/18/21.
//

import SwiftUI

struct ActivityFormPage: View {
    @State var formActivityName: String = ""
    @State var formActivityDescription: String = ""
    
    @State var formActivityStreet: String = ""
    @State var formActivityCity: String = ""
    @State var formActivityState: String = ""
    @State var formActivityCountry: String = ""
    @State var formActivityPostalCode: String = ""
    
    @State var price: Double = 0.00
    
    @State var formActivityUrl: String = ""
    
    @State var activitySubmitted: Bool = false
    
    var body: some View {
        Form {
            Section(header: Text("NAME")) {
                TextField("Name", text: $formActivityName)
                TextField("Description", text: $formActivityDescription)
            }
            
            Section(header: Text("ADDRESS")) {
                TextField("Street", text: $formActivityStreet)
                TextField("City", text: $formActivityStreet)
                TextField("State", text: $formActivityState)
                TextField("Country", text: $formActivityCountry)
                TextField("Postal Code", text: $formActivityPostalCode)
            }
            
            Section(header: Text("DETAILS")) {
                TextField("URL", text: $formActivityUrl)
            }
            
            Button(action: {activitySubmitted=true}, label: {
                HStack {
                    Spacer()
                    Text("Save Activity")
                    Spacer()
                }
            })
        }
            .navigationBarTitle("Add Activity")
    }
}

struct ActivityFormPage_Previews: PreviewProvider {
    static var previews: some View {
        ActivityFormPage()
    }
}
