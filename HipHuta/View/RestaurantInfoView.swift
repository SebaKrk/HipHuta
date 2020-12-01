//
//  RestaurantInfoView.swift
//  HipHuta
//
//  Created by Sebastian Sciuba on 01/12/2020.
//

import UIKit


class RestaurantInfoView: UIView {
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = .blue
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    lazy var nameContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.addSubview(nameLabel)
        view.layer.cornerRadius = 5
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nameLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//
        return view
    }()
    let nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.text = "Restauracja"
        return label
    }()
    
    let descriptionLabel : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 10)
        label.text = "OPIS"
        return label
    }()
    
    let adressLabel : UILabel = {
       let label = UILabel()
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 10)
        label.text = "os. Centrum C1, 31-929 Kraków"
        return label
    }()
    
    let moreInfoLabel : UILabel = {
        let label = UILabel()
         label.textColor = .black
         label.font = UIFont.boldSystemFont(ofSize: 10)
         label.text = "https://hiphuta.com/..."
         return label
     }()
    
    // MARK: - Init

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureViewComponents()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    MARK: - View Components
    func configureViewComponents() {

        
        addSubview(nameContainerView)
        nameContainerView.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 50)
        
        addSubview(imageView)
        imageView.anchor(top: nameContainerView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 24, paddingLeft: 12, paddingBottom: 0, paddingRight: 0, width: 100, height: 100)
        imageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        
        
    }
    
}


