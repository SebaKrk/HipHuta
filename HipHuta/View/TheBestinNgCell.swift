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
        let view = UIView()
        view.backgroundColor = .blue
        
        view.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nameLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        return view
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
        
        return iv
    }()
    
    let secImageView: UIImageView = { // zdjecie restauracji
        let iv = UIImageView()
        
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
    
//    MARK: - SetUp View
    
    func configureViewComponents() {
        
    }
    
}
