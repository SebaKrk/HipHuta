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
        let imageView = UIImageView(image: #imageLiteral(resourceName: "HipHutaLogo"))
        imageView.adjustsImageSizeForAccessibilityContentSizeCategory = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    var descripctionTextView: UITextView = {
        let textView = UITextView()
        textView.text = "Hip Huta"
        textView.font = UIFont.boldSystemFont(ofSize: 40)
        textView.textAlignment =  .center
        textView.textColor = .black
        textView.translatesAutoresizingMaskIntoConstraints = false
        
        return textView
    }()
    
    
    
//    "Hip Huta"
//    "Jedz, baw się i zakochaj w Nowej Hucie"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(logoImageView)
        logoImageView.frame = view.frame
   
        
        view.addSubview(descripctionTextView)

        descripctionTextView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 10).isActive = true
        descripctionTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        descripctionTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        descripctionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
    }
    


}


//https://www.youtube.com/watch?v=Hn_MGvuYZdg

