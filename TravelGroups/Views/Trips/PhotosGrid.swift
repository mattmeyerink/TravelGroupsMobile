//
//  PhotosGrid.swift
//  TravelGroups
//
//  Photos grid view for the trip detail page
//
//  Created by Matthew Meyerink on 8/17/21.
//

import SwiftUI

struct PhotosGrid: View {
    var images: [TripImage]
    var gridItemLayout = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        LazyVGrid(columns: gridItemLayout, spacing: 5) {
            ForEach(images) {image in
                Image(image.url)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 115, height: 115)
                    .clipped()
            }
        }
    }
}

struct PhotosGrid_Previews: PreviewProvider {
    static var previews: some View {
        PhotosGrid(images: sampleTripImages)
    }
}
