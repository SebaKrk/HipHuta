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
      
    }
    
}
