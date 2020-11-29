//
//  TheBestinNgCell.swift
//  HipHuta
//
//  Created by Sebastian Sciuba on 29/11/2020.
//

import UIKit

class TheBestInNhCell: UICollectionViewCell {
    
//    MARK: - Properties
    
    lazy var containerView: UIView = {
        let containerView = UIView()
        containerView.backgroundColor = .blue
        
        containerView.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        nameLabel.centerYAnchor.constraint(equalTo: containerView.centerYAnchor).isActive = true
        
        return containerView
    }()
    
    let nameLabel: UILabel = { // nazwa restauracji
        let label = UILabel()
        
        label.text = "Restauracja 1"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 16)
        
        return label
    }()
    
    let imageView: UIImageView = { // zdjecie oceny restauracji
        let iv = UIImageView()
        iv.backgroundColor = .yellow
        iv.contentMode = .scaleAspectFit
        
        return iv
    }()
    
    let secImageView: UIImageView = { // zdjecie restauracji
        let iv = UIImageView()
        
        return iv
    }()
    
//    MARK: - INIT
  
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.layer.cornerRadius = 10
        
        configureViewComponents()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    MARK: - SetUp View
    
    func configureViewComponents() {

        
    }
    
}
