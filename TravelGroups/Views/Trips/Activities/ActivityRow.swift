//
//  ActivityRow.swift
//  TravelGroups
//
//  Represents one row in the list of activitiess
//
//  Created by Matthew Meyerink on 8/16/21.
//

import SwiftUI
import UIKit

struct ActivityRow: View {
    var activity: Activity
    
    var body: some View {
        HStack {
            Text(activity.name)
                .fontWeight(.none)
                .font(.system(size: 20))
                .foregroundColor(.black)
            Spacer()
            Image(systemName: "chevron.right")
                .foregroundColor(.black)
        }
            .padding()
            .border(Color.gray)
    }
}

struct ActivityRow_Previews: PreviewProvider {
    static var previews: some View {
        ActivityRow(activity: sampleActivities[0])
    }
}
