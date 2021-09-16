//
//  SwiftUIView.swift
//  TravelGroups
//
//  Represents the cluster view for annotations close together
//
//  Created by Matthew Meyerink on 9/8/21.
//

import SwiftUI
import MapKit

class TravelPinClusterAnnotationView: MKAnnotationView {
    static let preferedClusteringIdentifier = Bundle.main.bundleIdentifier! + ".TravelPinClusterAnnotationView"
    
    override init(annotation: MKAnnotation?, reuseIdentifier: String?) {
        super.init(annotation: annotation, reuseIdentifier: reuseIdentifier)
        collisionMode = .circle
        print("Trying to cluster")
        updateImage()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) needed. Looks like I'll need it after all")
    }
    
    override var annotation: MKAnnotation? { didSet { updateImage() } }
    
    private func updateImage() {
        if let clusterAnnotation = annotation as? MKClusterAnnotation {
            self.image = image(count: clusterAnnotation.memberAnnotations.count)
        } else {
            self.image = image(count: 1)
        }
    }
    
    func image(count: Int) -> UIImage {
        let bounds = CGRect(origin: .zero, size: CGSize(width: 40, height: 40))
        
        let renderer = UIGraphicsImageRenderer(bounds: bounds)
        return renderer.image { _ in
            UIColor.blue.setFill()
            UIBezierPath(ovalIn: bounds).fill()
            
            UIColor.white.setFill()
            UIBezierPath(ovalIn: bounds.insetBy(dx: 8, dy: 8)).fill()
            
            let attributes: [NSAttributedString.Key: Any] = [
                            .foregroundColor: UIColor.black,
                            .font: UIFont.boldSystemFont(ofSize: 20)
                        ]

            let text = "\(count)"
            let size = text.size(withAttributes: attributes)
            let origin = CGPoint(x: bounds.midX - size.width / 2, y: bounds.midY - size.height / 2)
            let rect = CGRect(origin: origin, size: size)
            text.draw(in: rect, withAttributes: attributes)
            
        }
    }
}
