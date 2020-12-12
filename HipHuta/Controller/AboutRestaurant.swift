//
//  AboutRestaurant.swift
//  HipHuta
//
//  Created by Sebastian Sciuba on 12/12/2020.
//

import UIKit

class AboutRestaurantVC: UIViewController {
    
    var containerView : UIView = {
        var container = UIView()
        container.backgroundColor = .white
        container.layer.cornerRadius = 10
        container.clipsToBounds = true
        return container
    }()
    
    lazy var nameLabelContainer : UIView = {
        var container = UIView()
        container.backgroundColor = .black
        container.layer.cornerRadius = 5
        container.addSubview(nameLabel)
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.centerXAnchor.constraint(equalTo: container.centerXAnchor).isActive = true
        nameLabel.centerYAnchor.constraint(equalTo: container.centerYAnchor).isActive = true
        return container
    }()
    
    var adressLabel : UILabel = {
        var label = UILabel()
        label.text = "adress"
        label.textColor = .darkGray
        label.numberOfLines = 0
        label.sizeToFit()
        
        return label
    }()
    
    var nameLabel : UILabel = {
        var label = UILabel()
        label.text = "Restauracja"
        label.backgroundColor = .black
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 24)
        
        return label
    }()
    
    var resImage : UIImageView = {
        var image = UIImageView(image: #imageLiteral(resourceName: "CafeNowaKsięgarnia"))
        image.layer.cornerRadius = 10
        image.clipsToBounds = true
        return image
    }()
    
    var destriptionLabel : UILabel = {
        var label = UILabel()
        label.text = "dlugi tekst"
        label.textColor = .darkGray
        label.numberOfLines = 0
        label.sizeToFit()
        
        return label
    }()
    
    var moreInfoButton : UIButton = {
        var button = UIButton(type: .system)
        button.setTitle("wiecej infomacji", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        button.backgroundColor = .black
        button.layer.cornerRadius = 10
        button.setTitleColor(.white, for: .normal)
        
        return button
    }()
    
    let visualEffectView: UIVisualEffectView = {
        let blueEffect = UIBlurEffect(style: .dark)
        let view = UIVisualEffectView(effect: blueEffect)
        
        return view
    }()
    //    MARK: - ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        title = "The Best in Noowa Huta"
        setupViewConstraint()
        
    }
    
    //    MARK: - VIEW Constraint
    
    func setupViewConstraint() {
        view.addSubview(visualEffectView)
        visualEffectView.translatesAutoresizingMaskIntoConstraints = false
        visualEffectView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        visualEffectView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        visualEffectView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        visualEffectView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        visualEffectView.alpha = 1
        
        view.addSubview(containerView)
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 30).isActive = true
        containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20).isActive = true
        containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: -30).isActive = true
        
        containerView.addSubview(nameLabelContainer)
        
        nameLabelContainer.translatesAutoresizingMaskIntoConstraints = false
        nameLabelContainer.topAnchor.constraint(equalTo: containerView.topAnchor).isActive = true
        nameLabelContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        nameLabelContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        nameLabelContainer.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        containerView.addSubview(adressLabel)
        adressLabel.translatesAutoresizingMaskIntoConstraints = false
        adressLabel.topAnchor.constraint(equalTo: nameLabelContainer.bottomAnchor, constant: 20).isActive = true
        adressLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        
        containerView.addSubview(resImage)
        resImage.translatesAutoresizingMaskIntoConstraints = false
        resImage.topAnchor.constraint(equalTo: adressLabel.bottomAnchor,constant: 20).isActive = true
        resImage.leadingAnchor.constraint(equalTo: containerView.leadingAnchor,constant: 5).isActive = true
        resImage.trailingAnchor.constraint(equalTo: containerView.trailingAnchor,constant: -5).isActive = true
        resImage.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        containerView.addSubview(destriptionLabel)
        destriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        destriptionLabel.topAnchor.constraint(equalTo: resImage.bottomAnchor, constant: 20).isActive = true
        destriptionLabel.leadingAnchor.constraint(equalTo: resImage.leadingAnchor, constant: 10).isActive = true
        destriptionLabel.trailingAnchor.constraint(equalTo: resImage.trailingAnchor, constant: -10).isActive = true
        
        containerView.addSubview(moreInfoButton)
        moreInfoButton.translatesAutoresizingMaskIntoConstraints = false
        moreInfoButton.bottomAnchor.constraint(equalTo: containerView.bottomAnchor , constant: -20).isActive = true
        moreInfoButton.leadingAnchor.constraint(equalTo: containerView.leadingAnchor , constant: 40).isActive = true
        moreInfoButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -40).isActive = true
        moreInfoButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
}
