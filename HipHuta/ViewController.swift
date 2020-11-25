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
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    var descripctionTextView: UITextView = {
        let textView = UITextView()
        textView.text = "Hip Huta"
        textView.font = UIFont.boldSystemFont(ofSize: 70)
        textView.textAlignment =  .center
        textView.textColor = .black
        textView.translatesAutoresizingMaskIntoConstraints = false
        
        return textView
    }()
    
    
    
//    "Hip Huta"
//    "Jedz, baw się i zakochaj w Nowej Hucie"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpTopStackView()
    }
    
    func setUpTopStackView() {
        
        let topImageConteinerView = UIView()
        topImageConteinerView.backgroundColor = .blue
        view.addSubview(topImageConteinerView)
        
        
        topImageConteinerView.translatesAutoresizingMaskIntoConstraints = false
        topImageConteinerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topImageConteinerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topImageConteinerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topImageConteinerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
    
        topImageConteinerView.addSubview(logoImageView)
    
        logoImageView.centerXAnchor.constraint(equalTo: topImageConteinerView.centerXAnchor).isActive = true
        logoImageView.centerYAnchor.constraint(equalTo: topImageConteinerView.centerYAnchor).isActive = true
        logoImageView.heightAnchor.constraint(equalTo: topImageConteinerView.heightAnchor, multiplier: 0.85).isActive = true
        
        view.addSubview(descripctionTextView)

        descripctionTextView.topAnchor.constraint(equalTo: topImageConteinerView.bottomAnchor).isActive = true
        descripctionTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        descripctionTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        descripctionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }

}


//https://www.youtube.com/watch?v=Hn_MGvuYZdg

