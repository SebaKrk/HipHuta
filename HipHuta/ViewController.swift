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
        let attributedText = NSMutableAttributedString(string: "Hip Huta", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 70)])

        attributedText.append(NSAttributedString(string: "\nJedz, baw się i zakochaj w Nowej Hucie", attributes: [NSAttributedString.Key.font:UIFont.systemFont(ofSize: 30),NSAttributedString.Key.foregroundColor:UIColor.gray]))

        textView.attributedText = attributedText
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment =  .center
        textView.textColor = .black
        
        return textView
    }()
    
    let firstButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .red
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    let secondButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .green
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    let thirdButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .yellow
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    let fourthButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .blue
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpTopStackView()
        setUpBottonControlls()
    
    }
    
    func setUpTopStackView() {
        
        let topImageConteinerView = UIView()
        //        topImageConteinerView.backgroundColor = .blue
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
        
        view.addSubview(descripctionTextView) // tekst
        descripctionTextView.topAnchor.constraint(equalTo: topImageConteinerView.bottomAnchor).isActive = true
        descripctionTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
        descripctionTextView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24).isActive = true
        descripctionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
    }
    
    func setUpBottonControlls() {
        let bottomControlsStackView = UIStackView(arrangedSubviews: [firstButton,secondButton,thirdButton,fourthButton])
        view.addSubview(bottomControlsStackView)
        bottomControlsStackView.translatesAutoresizingMaskIntoConstraints = false
        bottomControlsStackView.distribution = .fillEqually
        bottomControlsStackView.axis = .horizontal
        
        NSLayoutConstraint.activate([
            bottomControlsStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            bottomControlsStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            bottomControlsStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            bottomControlsStackView.heightAnchor.constraint(equalToConstant: 50)
        ])
        
    }
}


//https://www.youtube.com/watch?v=Hn_MGvuYZdg

