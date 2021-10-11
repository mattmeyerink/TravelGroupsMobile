//
//  PhotoUploadForm.swift
//  TravelGroups
//
//  Form to upload a photo. Can be used on an activity or a trip
//
//  Created by Matthew Meyerink on 10/10/21.
//

import SwiftUI

struct PhotoUploadForm: View {
    @State var isShowingPhotoLibrary: Bool = false
    @State var imageToUpload = UIImage()
    
    var body: some View {
        ScrollView {
            if (self.imageToUpload.size.width != 0) {
                Text("Selected Photo")
                    .font(.title)
                Image(uiImage: self.imageToUpload)
                    .resizable()
                    .scaledToFit()
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .edgesIgnoringSafeArea(.all)
            } else {
                Text("Select a Photo")
                    .font(.title)
            }
            
            Button(action: { self.isShowingPhotoLibrary = true }) {
                HStack {
                    Image(systemName: "photo")
                        .font(.system(size: 20))

                    Text("Photo library")
                        .font(.headline)
                }
            }
        }
            .navigationBarTitle("Upload Photo")
            .sheet(isPresented: $isShowingPhotoLibrary) {
                ImagePicker(selectedImage: self.$imageToUpload)
            }
    }
}

struct PhotoUploadForm_Previews: PreviewProvider {
    static var previews: some View {
        PhotoUploadForm()
    }
}
