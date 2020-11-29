//
//  ViewController.swift
//  HipHuta
//
//  Created by Sebastian Sciuba on 24/11/2020.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
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
        textView.isEditable = false
        
        return textView
    }()
    
    let firstButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "home_selected")?.withRenderingMode(.alwaysOriginal), for: .normal)
//        button.setTitle("AAA", for: .normal)
//        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
//        button.setTitleColor(.black, for: .normal)
//        button.backgroundColor = .red
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleFirstButton), for: .touchUpInside)
        return button
    }()
    @objc func handleFirstButton() {
        print("button 1 pressed")
    }

    let secondButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "like_selected")?.withRenderingMode(.alwaysOriginal), for: .normal)
//        button.setTitle("BBB", for: .normal)
//        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
//        button.setTitleColor(.black, for: .normal)
//        button.backgroundColor = .green
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleSecondButton), for: .touchUpInside)

        return button
    }()
    @objc func handleSecondButton() {
        print("button 2 pressed")
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        
        let rootVC = TheBestInNhViewController(collectionViewLayout: layout)
        let navVC = UINavigationController(rootViewController: rootVC)
        present(navVC, animated: true)
    }
    let thirdButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "search_selected")?.withRenderingMode(.alwaysOriginal), for: .normal)
//        button.setTitle("CCC", for: .normal)
//        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
//        button.setTitleColor(.black, for: .normal)
//        button.backgroundColor = .yellow
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleThirdButton), for: .touchUpInside)
        return button
    }()
    @objc func handleThirdButton() {
        print("button 3 pressed")
        
        let rootVC = MapNhViewController()
        let navVC = UINavigationController(rootViewController: rootVC)
        navVC.modalPresentationStyle = .fullScreen
        present(navVC, animated: true)
    }
    
    let fourthButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "gear")?.withRenderingMode(.alwaysOriginal), for: .normal)
//        button.setTitle("DDD", for: .normal)
//        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
//        button.setTitleColor(.black, for: .normal)
//        button.backgroundColor = .blue
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleFourthButton), for: .touchUpInside)
        
        return button
    }()
    @objc func handleFourthButton() {
        print("button 4 pressed")
        
        let rootVC = AboutAsViewController()
        let navVC = UINavigationController(rootViewController: rootVC)
        present(navVC, animated: true)
    }

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
        
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
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

