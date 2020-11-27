//
//  MapNhViewController.swift
//  HipHuta
//
//  Created by Sebastian Sciuba on 27/11/2020.
//

import UIKit
import MapKit

class MapNhViewController : UIViewController {
    
    let mapView: MKMapView = {
        let mapView = MKMapView()
        return mapView
    }()
    var locationManager: CLLocationManager!
    
    let centerMapButton : UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "location-arrow-flat")?.withRenderingMode(.alwaysOriginal), for: .normal)
        button.addTarget(self, action: #selector(handleCenterOnUserLocation), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    @objc func handleCenterOnUserLocation() {
        print("center map button pressed")
        centerMapOnUserLocation()
    }
    
    let logoTextView: UITextView = {
        let textView = UITextView()
        let attributedText = NSMutableAttributedString(string: "Hip Huta", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 60)])
        
        attributedText.append(NSAttributedString(string:"\nJedz, baw się i zakochaj w Nowej Hucie", attributes: [NSAttributedString.Key.font:UIFont.systemFont(ofSize: 30),NSAttributedString.Key.foregroundColor:UIColor.gray]))
        
        textView.attributedText = attributedText
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.textColor = .black
        textView.isEditable = false
        
        return textView
    }()
    
    var descripctionTextView : UITextView = {
        let textView = UITextView()
        let attributedText = NSMutableAttributedString(string: "Wasi znajomi twierdzą, że w Nowej Hucie nie ma gdzie zjeść ? Pokażcie im tę mapę", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18)])
        
        attributedText.append(NSAttributedString(string: "\n\nW wielu wiadomościach do nas pisaliście, że na Hip Hucie brakuje mapy, na której widoczne byłyby wszystkie odwiedzone przez nas lokale. Postanowiliśmy to zmienić. Efekt naszych prac możecie podziwiać poniżej:", attributes: [NSAttributedString.Key.font:UIFont.systemFont(ofSize: 14),NSAttributedString.Key.foregroundColor:UIColor.gray]))
        
        textView.attributedText = attributedText
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment =  .center
        textView.isEditable = false
        
        return textView
    }()
    
    
    
    var location: CLLocationManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Kulinarna Mapa NH"
        view.backgroundColor = .white
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "back" , style: .plain, target: self, action: #selector(dismisSelf))
        
        setUpContainerView()
        setUpMapButton()
        
        configureMapView()
        configureLocationManager()
        enablelocationServices()
        centerMapOnUserLocation()
        
    }
    
    @objc private func dismisSelf() {
        dismiss(animated: true, completion: nil)
    }
    func setUpMapButton() {
        view.addSubview(centerMapButton)
        centerMapButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -44).isActive = true
        centerMapButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -12).isActive = true
        centerMapButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        centerMapButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
        centerMapButton.layer.cornerRadius = 50 / 2
        centerMapButton.alpha = 1
    }
    
    func setUpContainerView() {
        
        let topContainerView = UIView()
        
        view.addSubview(topContainerView)
        //        topContainerView.backgroundColor = .blue
        
        topContainerView.translatesAutoresizingMaskIntoConstraints = false
        topContainerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topContainerView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        topContainerView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        topContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        
        topContainerView.addSubview(logoTextView)
        logoTextView.topAnchor.constraint(equalTo: topContainerView.topAnchor).isActive = true
        logoTextView.leftAnchor.constraint(equalTo: topContainerView.leftAnchor).isActive = true
        logoTextView.rightAnchor.constraint(equalTo: topContainerView.rightAnchor).isActive = true
        logoTextView.bottomAnchor.constraint(equalTo: topContainerView.bottomAnchor, constant: 0).isActive = true
        
        let centerContainerView = UIView()
        topContainerView.addSubview(centerContainerView)
        //        centerContainerView.backgroundColor = .yellow
        
        centerContainerView.translatesAutoresizingMaskIntoConstraints = false
        centerContainerView.bottomAnchor.constraint(equalTo: topContainerView.bottomAnchor).isActive = true
        centerContainerView.leftAnchor.constraint(equalTo: topContainerView.leftAnchor).isActive = true
        centerContainerView.rightAnchor.constraint(equalTo: topContainerView.rightAnchor).isActive = true
        centerContainerView.heightAnchor.constraint(equalTo: topContainerView.heightAnchor, multiplier: 0.4).isActive = true
        
        centerContainerView.addSubview(descripctionTextView)
        descripctionTextView.topAnchor.constraint(equalTo: centerContainerView.topAnchor).isActive = true
        descripctionTextView.leftAnchor.constraint(equalTo: centerContainerView.leftAnchor,constant: 10).isActive = true
        descripctionTextView.rightAnchor.constraint(equalTo: centerContainerView.rightAnchor,constant: -10).isActive = true
        descripctionTextView.bottomAnchor.constraint(equalTo: centerContainerView.bottomAnchor, constant: 0).isActive = true
        
        let botoomContainerView = UIView()
        view.addSubview(botoomContainerView)
        //        botoomContainerView.backgroundColor = .red
        
        botoomContainerView.translatesAutoresizingMaskIntoConstraints = false
        botoomContainerView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        botoomContainerView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        botoomContainerView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        botoomContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        
        botoomContainerView.addSubview(mapView)
        
        mapView.translatesAutoresizingMaskIntoConstraints = false
        mapView.topAnchor.constraint(equalTo: botoomContainerView.topAnchor, constant: 10).isActive = true
        mapView.leftAnchor.constraint(equalTo: botoomContainerView.leftAnchor, constant: 10).isActive = true
        mapView.rightAnchor.constraint(equalTo: botoomContainerView.rightAnchor, constant: -10).isActive = true
        mapView.heightAnchor.constraint(equalTo: botoomContainerView.heightAnchor, multiplier: 0.9).isActive = true
        
        
    }
// MARK - MAPS operation
    
    func centerMapOnUserLocation() {
        guard let coordinate = locationManager.location?.coordinate else {return}
        print("cord: \(coordinate)")
        let region = MKCoordinateRegion(center: coordinate, latitudinalMeters: 2000, longitudinalMeters: 2000)
        
        mapView.setRegion(region, animated: true)
    }
    
    func configureLocationManager() {
        locationManager = CLLocationManager()
        locationManager.delegate = self
    }
    
    func configureMapView() {
        mapView.showsUserLocation = true
        mapView.userTrackingMode = .follow
    }
}
extension MapNhViewController: CLLocationManagerDelegate {
    
    func enablelocationServices() {
        switch CLLocationManager.authorizationStatus() {
        
        case .notDetermined:
            print("Lacation auth status is not Determined")
            locationManager.requestWhenInUseAuthorization()
            
        case .restricted:
            print("Lacation auth status is restricted")
        case .denied:
            print("Lacation auth status is denied ")
        case .authorizedAlways:
            print("Lacation auth status is authorizedAlways")
        case .authorizedWhenInUse:
            print("Lacation auth status is When In Use")
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        centerMapOnUserLocation()
    }
}

