//
//  AboutAsViewController.swift
//  HipHuta
//
//  Created by Sebastian Sciuba on 26/11/2020.
//

import UIKit
import SafariServices

class AboutAsViewController: UIViewController {
    
    let logoImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "HipHuta"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    
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
        let attributedText = NSMutableAttributedString(string: "Blog poświęcony kawiarniom, restauracjom i fajnym inicjatywom w najmłodszej dzielnicy Krakowa", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18)])
        
        attributedText.append(NSAttributedString(string: "\n\nDołącz do nas i pokaż, że NH jest „hip”!", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 16),NSAttributedString.Key.foregroundColor:UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nUważasz, że powinniśmy odwiedzić twój lokal? Znalazłeś ciekawe miejsce w Hucie o którym powinniśmy napisać? Chciałbyś z nami współpracować? Koniecznie daj nam o tym znać na hiphuta@gmail.com lub Facebooku. \nOdwiedź też naszego Instagrama", attributes: [NSAttributedString.Key.font:UIFont.systemFont(ofSize: 16),NSAttributedString.Key.foregroundColor:UIColor.gray]))
        
        textView.attributedText = attributedText
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment =  .center
        textView.textColor = .black
        textView.isEditable = false
        
        return textView
    }()
    
    let imageView:UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "HipHuta-oNas"))
        imageView.adjustsImageSizeForAccessibilityContentSizeCategory = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let facebookButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("FB", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(.black, for: .normal)

//        button.setImage(UIImage(named: "facebook")?.withRenderingMode(.alwaysOriginal), for: .normal)
//        button.backgroundColor = .blue
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleFacebookButton), for: .touchUpInside)
        return button
    }()
    
    @objc func handleFacebookButton() {
        let url = "https://www.facebook.com/hiphuta/"
        let vc = SFSafariViewController(url: URL(string: url)!)
        present(vc, animated: true)
    }
    
    let instagramButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("INS", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(.black, for: .normal)
//        button.setImage(UIImage(named: "instagram")?.withRenderingMode(.alwaysOriginal), for: .normal)
//        button.backgroundColor = .yellow
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(hanldeInstagramButton), for: .touchUpInside)
        return button
    }()
    @objc func hanldeInstagramButton() {
        let url = "https://www.instagram.com/p/B0g5VjWoVnr/"
        let vc = SFSafariViewController(url: URL(string: url)!)
        present(vc, animated: true)
    }
    
    let mailButton: UIButton = {
        let button = UIButton(type: .system)
        
        button.setTitle("MAIL", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(.black, for: .normal)
        
//        button.setImage(UIImage(systemName: "mail", withConfiguration: UIImage.SymbolConfiguration(weight: .regular))?.withTintColor(.black,renderingMode: .alwaysOriginal), for: .normal)
//        button.backgroundColor = .greene
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleMailButton), for: .touchUpInside)
        return button
    }()
    @objc func handleMailButton() {
        print("send mail opction")
    }
    
    let wwwButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("WWW", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(.black, for: .normal)
        
        
//        button.setImage(UIImage(named: "www")?.withRenderingMode(.alwaysOriginal), for: .normal)
//        button.backgroundColor = .red
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleWwwButton), for: .touchUpInside)
        return button
    }()
    @objc func handleWwwButton() {
        let url = "https://hiphuta.com"
        let vc = SFSafariViewController(url: URL(string: url)!)
        present(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        title = "O Nas"
        
        setUpContainerView()
        
    }
    
    func setUpContainerView() {
        let topContainerView = UIView()
        view.addSubview(topContainerView)
//        topContainerView.backgroundColor = .green
        
        topContainerView.translatesAutoresizingMaskIntoConstraints = false
        topContainerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        
        topContainerView.addSubview(logoTextView)
        logoTextView.topAnchor.constraint(equalTo: topContainerView.topAnchor).isActive = true
        logoTextView.leadingAnchor.constraint(equalTo: topContainerView.leadingAnchor).isActive = true
        logoTextView.trailingAnchor.constraint(equalTo: topContainerView.trailingAnchor).isActive = true
        logoTextView.bottomAnchor.constraint(equalTo: topContainerView.bottomAnchor, constant: 0).isActive = true
        
        let centerContainerView = UIView()
        view.addSubview(centerContainerView)
//        centerContainerView.backgroundColor = .red
        
        centerContainerView.translatesAutoresizingMaskIntoConstraints = false
        centerContainerView.bottomAnchor.constraint(equalTo: topContainerView.bottomAnchor).isActive = true
        centerContainerView.leadingAnchor.constraint(equalTo: topContainerView.leadingAnchor).isActive = true
        centerContainerView.trailingAnchor.constraint(equalTo: topContainerView.trailingAnchor).isActive = true
        centerContainerView.heightAnchor.constraint(equalTo: topContainerView.heightAnchor, multiplier: 0.5).isActive = true
        
        centerContainerView.addSubview(descripctionTextView)
        descripctionTextView.topAnchor.constraint(equalTo: centerContainerView.topAnchor).isActive = true
        descripctionTextView.leadingAnchor.constraint(equalTo: centerContainerView.leadingAnchor).isActive = true
        descripctionTextView.trailingAnchor.constraint(equalTo: centerContainerView.trailingAnchor).isActive = true
        descripctionTextView.bottomAnchor.constraint(equalTo: centerContainerView.bottomAnchor).isActive = true
        
        let bottomContainerView = UIView()
        view.addSubview(bottomContainerView)
//        bottomContainerView.backgroundColor = .yellow
        bottomContainerView.translatesAutoresizingMaskIntoConstraints = false
        
        bottomContainerView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        bottomContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        bottomContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        bottomContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        
        bottomContainerView.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        imageView.topAnchor.constraint(equalTo: bottomContainerView.topAnchor, constant: 10).isActive = true
        imageView.leadingAnchor.constraint(equalTo: bottomContainerView.leadingAnchor, constant: 10).isActive = true
        imageView.trailingAnchor.constraint(equalTo: bottomContainerView.trailingAnchor, constant: -10).isActive = true
        imageView.bottomAnchor.constraint(equalTo: bottomContainerView.bottomAnchor, constant: -70).isActive = true
    
        let bottomControls = UIStackView(arrangedSubviews: [facebookButton,instagramButton,mailButton,wwwButton])
        view.addSubview(bottomControls)
        bottomControls.translatesAutoresizingMaskIntoConstraints = false
        bottomControls.distribution = .fillEqually
        bottomControls.axis = .horizontal
        
        NSLayoutConstraint.activate([
            bottomControls.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            bottomControls.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            bottomControls.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            bottomControls.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        
    }
}


