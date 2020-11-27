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
        
    }
    @objc private func dismisSelf() {
        dismiss(animated: true, completion: nil)
    }
}


// WASI ZNAJOMI TWIERDZĄ, ŻE W HUCIE NIE MA GDZIE ZJEŚĆ?
// POKAŻCIE IM TĘ MAPĘ
