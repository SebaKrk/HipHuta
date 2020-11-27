//
//  MapNhViewController.swift
//  HipHuta
//
//  Created by Sebastian Sciuba on 27/11/2020.
//

import UIKit
import MapKit

class MapNhViewController : UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Kulinarna Mapa NH"
        view.backgroundColor = .white
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "back" , style: .plain, target: self, action: #selector(dismisSelf))
        
        setUpContainerView()
        
        
        
    }
    @objc private func dismisSelf() {
        dismiss(animated: true, completion: nil)
    }
    func setUpContainerView() {
        let topCointeinerView = UIView()
        view.addSubview(topCointeinerView)
        topCointeinerView.backgroundColor = .red
        topCointeinerView.translatesAutoresizingMaskIntoConstraints = false
        topCointeinerView.frame = view.frame
        
        let upperContainer = UIView()
        upperContainer.backgroundColor = .yellow
        upperContainer.translatesAutoresizingMaskIntoConstraints = false
        upperContainer.frame = CGRect(x: 2, y: 100, width: 410, height: 375)
        
        let bottomContainer = UIView()
        bottomContainer.translatesAutoresizingMaskIntoConstraints = false
        bottomContainer.backgroundColor = .blue
        bottomContainer.frame = CGRect(x: 2, y: 478, width: 410, height: 375)
        
        let firstUpperContainer = UIView()
        firstUpperContainer.translatesAutoresizingMaskIntoConstraints = false
        firstUpperContainer.backgroundColor = .green
        firstUpperContainer.frame = CGRect(x: 5, y: 5, width: 400, height: 150)
        
        let secondUpperContainer = UIView()
        secondUpperContainer.translatesAutoresizingMaskIntoConstraints = false
        secondUpperContainer.backgroundColor = .darkGray
        secondUpperContainer.frame = CGRect(x: 5, y: 160, width: 400, height: 210)
        
        topCointeinerView.addSubview(upperContainer)
        topCointeinerView.addSubview(bottomContainer)
        upperContainer.addSubview(firstUpperContainer)
        upperContainer.addSubview(secondUpperContainer)
        
//        upperContainer.centerXAnchor.constraint(equalTo: topCointeinerView.centerXAnchor).isActive = true
//        upperContainer.centerYAnchor.constraint(equalTo: topCointeinerView.centerYAnchor).isActive = true
//        upperContainer.heightAnchor.constraint(equalTo: topCointeinerView.heightAnchor, multiplier: 0.5).isActive = true
//        bottomContainer.centerXAnchor.constraint(equalTo: topCointeinerView.centerXAnchor).isActive = true
//        bottomContainer.centerYAnchor.constraint(equalTo: topCointeinerView.centerYAnchor).isActive = true
//        bottomContainer.heightAnchor.constraint(equalTo: topCointeinerView.heightAnchor, multiplier: 0.5).isActive = true

        
        
        
        
        
        //            view.addSubview(mapView)
        //            mapView.frame = view.frame
        
        
        
        
        //        let upperContainer = UIView()
        //        view.addSubview(upperContainer)
        //
        //        upperContainer.backgroundColor = .red
        //        upperContainer.frame = CGRect(x: 0, y: 100, width: 100, height: 100)
        //
        //        let centerContainer = UIView()
        //        view.addSubview(centerContainer)
        //        centerContainer.backgroundColor = .green
        //        centerContainer.frame = CGRect(x: 0, y: 300, width: 100, height: 100)
        //
        //        let bottomContainer = UIView()
        //        view.addSubview(bottomContainer)
        //        bottomContainer.backgroundColor = .blue
        //        bottomContainer.frame = CGRect(x: 0, y: 500, width: 100, height: 100)
        
    }
    
    
}









// WASI ZNAJOMI TWIERDZĄ, ŻE W HUCIE NIE MA GDZIE ZJEŚĆ?
// POKAŻCIE IM TĘ MAPĘ
