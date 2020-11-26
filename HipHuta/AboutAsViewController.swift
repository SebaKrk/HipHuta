//
//  AboutAsViewController.swift
//  HipHuta
//
//  Created by Sebastian Sciuba on 26/11/2020.
//

import UIKit
import SafariServices

class AboutAsViewController: UIViewController {
    
    var descripctionTextView : UITextView = {
        let textView = UITextView()
        let attributedText = NSMutableAttributedString(string: "Hip Huta", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 60)])
        
        attributedText.append(NSAttributedString(string: "\nJedz, baw się i zakochaj w Nowej Hucie", attributes:
                                                    [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 30)]))
        
        attributedText.append(NSAttributedString(string: "\n\nBlog poświęcony kawiarniom, restauracjom i fajnym inicjatywom w najmłodszej dzielnicy Krakowa", attributes: [NSAttributedString.Key.font:UIFont.systemFont(ofSize: 16),NSAttributedString.Key.foregroundColor:UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nDołącz do nas i pokaż, że NH jest „hip”!", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 16)]))
                                
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
        button.backgroundColor = .blue
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let instagramButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .yellow
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let mailButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .green
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    let wwwButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .red
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //    let url = newsApple[indexPath.row].url
    //    let vc = SFSafariViewController(url: URL(string: url!)!)
    //    present(vc, animated: true)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        title = "O Nas"
        
        setUpDescView()
        setUpImageView()
        
    }
    
    func setUpDescView() {
        view.addSubview(descripctionTextView)
        
        descripctionTextView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        descripctionTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
        descripctionTextView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24).isActive = true
        descripctionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }
    
    func setUpImageView() {
        
        let bottomImageContainerView = UIView()
        view.addSubview(bottomImageContainerView)
        
//        bottomImageContainerView.backgroundColor = .red
        bottomImageContainerView.translatesAutoresizingMaskIntoConstraints = false
        bottomImageContainerView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        bottomImageContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        bottomImageContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        bottomImageContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.45).isActive = true
        bottomImageContainerView.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.centerXAnchor.constraint(equalTo: bottomImageContainerView.centerXAnchor).isActive = true
//        imageView.centerYAnchor.constraint(equalTo: bottomImageContainerView.centerYAnchor).isActive = true
        imageView.heightAnchor.constraint(equalTo: bottomImageContainerView.heightAnchor, multiplier: 0.76).isActive = true
        
        let bottomControls = UIStackView(arrangedSubviews: [facebookButton,instagramButton,mailButton,wwwButton])
        bottomImageContainerView.addSubview(bottomControls)
        bottomControls.translatesAutoresizingMaskIntoConstraints = false
        bottomControls.distribution = .fillEqually
        bottomControls.axis = .horizontal
        
        NSLayoutConstraint.activate([
            bottomControls.bottomAnchor.constraint(equalTo: bottomImageContainerView.safeAreaLayoutGuide.bottomAnchor),
            bottomControls.leadingAnchor.constraint(equalTo: bottomImageContainerView.safeAreaLayoutGuide.leadingAnchor),
            bottomControls.trailingAnchor.constraint(equalTo: bottomImageContainerView.safeAreaLayoutGuide.trailingAnchor),
            bottomControls.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        
    }
}

