//
//  Place.swift
//  HipHuta
//
//  Created by Sebastian Sciuba on 28/01/2021.
//

import UIKit
import MapKit

class Place: NSObject, MKAnnotation {
    var title: String?
    var coordinate: CLLocationCoordinate2D
    var info: String
    
    init (title: String,coordinate: CLLocationCoordinate2D, info: String) {
        self.title = title
        self.coordinate = coordinate
        self.info = info
    }
}
