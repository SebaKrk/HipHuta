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
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.text = "Restauracja"
        return label
    }()
    
    let descriptionLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .yellow
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.text = "Dobra książka i pyszna kawa. Czy może być lepsze połączenie? Z tego jakże trafnego założenia wyszli założyciele Nowej na os. Zgody 7, którzy postanowili udowodnić, że w Hucie wciąż jest miejsce na księgarnię z prawdziwego zdarzenia, kolejną świetną kawiarnię i piękny neon"
        label.numberOfLines = 0
        return label
    }()
    
    let adressLabel : UILabel = {
       let label = UILabel()
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.text = "os. Centrum C1, 31-929 Kraków"
        return label
    }()
    
    let moreInfoLabel : UILabel = {
        let label = UILabel()
         label.textColor = .black
         label.font = UIFont.boldSystemFont(ofSize: 15)
         label.text = "https://hiphuta.com/..."
         return label
     }()
    
    let moreInfoButton : UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .systemPink
        button.setTitle("More Info", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.addTarget(self, action: #selector(handleMoreInfoButton), for: .touchUpInside)
        button.layer.cornerRadius = 5
        
        return button
    }()
    @objc func handleMoreInfoButton() {
        print("moreInfoButton press")
    }
    
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
        imageView.anchor(top: nameContainerView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 24, paddingLeft: 12, paddingBottom: 0, paddingRight: 0, width: 250, height: 100)
        imageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        addSubview(descriptionLabel)
        descriptionLabel.anchor(top: imageView.bottomAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 16, paddingLeft: 8, paddingBottom: 0, paddingRight: 0, width: 250, height: 300)
        descriptionLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true

        addSubview(adressLabel)
        adressLabel.anchor(top: descriptionLabel.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 16, paddingLeft: 0, paddingBottom: 0, paddingRight: 8, width: 0, height: 0)
        adressLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
//        addSubview(moreInfoLabel)
//        moreInfoLabel.anchor(top: adressLabel.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 16, paddingLeft: 0, paddingBottom: 0, paddingRight: 8, width: 0, height: 0)
//        moreInfoLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        addSubview(moreInfoButton)
        moreInfoButton.anchor(top: nil, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 12, paddingBottom: 12, paddingRight: 12, width: 0, height: 50)
    }
    
}

//var name = ""
//var adress = ""
//var description = ""
//var moreInfo = ""
