//
//  TheBestinNgCell.swift
//  HipHuta
//
//  Created by Sebastian Sciuba on 29/11/2020.
//

import UIKit

protocol TheBestinNgCellDelagte {
    func presentInfoView(withRestaurant: RestaurantModel)
}

class TheBestInNhCell: UICollectionViewCell {
    
    //    MARK: - Properties
    var delegate: TheBestinNgCellDelagte?
    
    
    
    
    lazy var imageView: UIImageView = {
        let iv = UIImageView(image: #imageLiteral(resourceName: "CafeNowaKsięgarnia"))
        iv.adjustsImageSizeForAccessibilityContentSizeCategory = false
        iv.backgroundColor = .gray
        //        iv.contentMode = .scaleAspectFit
        iv.addSubview(nameLabel)
        
        return iv
    }()
    
    lazy var nameContainerView :UIView = {
        let view = UIView()
        
        view.backgroundColor = .black
        view.addSubview(nameLabel)
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nameLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        return view
    }()
    
    
    let nameLabel: UILabel = { // nazwa restauracji - Cafe Nowa Księgarnia
        let label = UILabel()
        
        label.text = "Nazwa"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 16)
        
        return label
    }()
    
    let secImageView: UIImageView = { // zdjecie restauracji
        let iv = UIImageView()
        iv.backgroundColor = .yellow
        
        return iv
    }()
    
    //    MARK: - INIT
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureViewComponents()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    //    MARK: - Selector
    
    @objc func handleLongPress(sender: UILongPressGestureRecognizer) {
        if sender.state == .began {
            print ("Long Press began")
        }
    }
    
    
    //    MARK: - SetUp View
    
    func configureViewComponents() {
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
        
        
        addSubview(imageView)
        imageView.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: self.frame.height - 50)
        
        addSubview(nameContainerView)
        nameContainerView.anchor(top: nil, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 50)
        
        let longPressGestRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(handleLongPress))
        self.addGestureRecognizer(longPressGestRecognizer)
        
    }
    
}


//
//imageView.translatesAutoresizingMaskIntoConstraints = false
//imageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
//imageView.leftAnchor.constraint(equalTo: leadingAnchor).isActive = true
//imageView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
