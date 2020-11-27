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
        let upperContainer = UIView()
        view.addSubview(upperContainer)
        
        upperContainer.backgroundColor = .red
        upperContainer.frame = CGRect(x: 0, y: 100, width: 100, height: 100)
        
        let centerContainer = UIView()
        view.addSubview(centerContainer)
        centerContainer.backgroundColor = .green
        centerContainer.frame = CGRect(x: 0, y: 300, width: 100, height: 100)
        
        let bottomContainer = UIView()
        view.addSubview(bottomContainer)
        bottomContainer.backgroundColor = .blue
        bottomContainer.frame = CGRect(x: 0, y: 500, width: 100, height: 100)
        
    }
    
    
}









// WASI ZNAJOMI TWIERDZĄ, ŻE W HUCIE NIE MA GDZIE ZJEŚĆ?
// POKAŻCIE IM TĘ MAPĘ
