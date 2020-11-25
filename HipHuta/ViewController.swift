//
//  ViewController.swift
//  HipHuta
//
//  Created by Sebastian Sciuba on 24/11/2020.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    var mapView: MKMapView!
    
    var logoImageView : UIImageView = {
        var imageView = UIImageView(image: #imageLiteral(resourceName: "HipHutaLogo"))
        imageView.adjustsImageSizeForAccessibilityContentSizeCategory = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(logoImageView)
        logoImageView.frame = view.frame
        
    }


}


//https://www.youtube.com/watch?v=Hn_MGvuYZdg

