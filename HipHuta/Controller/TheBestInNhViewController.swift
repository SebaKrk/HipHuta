//
//  TheBestInNGViewController.swift
//  HipHuta
//
//  Created by Sebastian Sciuba on 29/11/2020.
//

import UIKit

class TheBestInNhViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    private let reuseIdentifier = "Cell"
    
    let restaurant = getRestaurant()
    
    let infoView: RestaurantInfoView = {
        let view = RestaurantInfoView()
        view.backgroundColor = .red
        view.layer.cornerRadius = 5
        return view
    }()
    
    let visualEffectView: UIVisualEffectView = {
        let blueEffect = UIBlurEffect(style: .light)
        let view = UIVisualEffectView(effect: blueEffect)
        
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView!.register(TheBestInNhCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
        collectionView.backgroundColor = .white
        title = "The best in Nowa Huta"
        //        collectionView.isPagingEnabled = true
        setUpViewComponents()
        
    }
    
    //    MARK: - VIEW Components
    
    func setUpViewComponents() {
        view.addSubview(visualEffectView)
        visualEffectView.translatesAutoresizingMaskIntoConstraints = false
        visualEffectView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        visualEffectView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        visualEffectView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        visualEffectView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        visualEffectView.alpha = 0
    
    }
    
    //    MARK: - CELL
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return restaurant.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? TheBestInNhCell {
            
            cell.backgroundColor = .red
            
            let resView = restaurant[indexPath.item]
            
            cell.imageView.image = UIImage(named: resView.imgName)
            cell.nameLabel.text = resView.name
            cell.delegate = self
            
            return cell
        }
        return UICollectionViewCell()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 8, bottom: 8, right: 8)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let widht = (view.frame.width - 30)
        return CGSize(width: widht, height: 375)
        //        return CGSize(width: 300, height: 100)
        
    }
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

        let restaurantVC = AboutRestaurantVC()
        
        restaurantVC.nameLabel.text = restaurant[indexPath.item].name
        restaurantVC.resImage.image = restaurant[indexPath.item].img2
        restaurantVC.destriptionLabel.text = restaurant[indexPath.item].description
        restaurantVC.adressLabel.text = restaurant[indexPath.item].adress
        restaurantVC.urlString = restaurant[indexPath.item].moreInfo
//        restaurantVC.modalPresentationStyle = .fullScreen
        present(restaurantVC, animated: true, completion: nil)
        
    }
}

extension TheBestInNhViewController: TheBestInNhCellDelegate  {
    func presentInfoView() {
        view.addSubview(infoView)
        infoView.delegate = self
        infoView.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: view.frame.width - 80, height: 600)
        infoView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        infoView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -20).isActive = true
        
        infoView.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        infoView.alpha = 0
        
        UIView.animate(withDuration: 0.5) {
            self.visualEffectView.alpha = 1
            self.infoView.alpha = 1
            self.infoView.transform = .identity
        }
    }
}

extension TheBestInNhViewController: RestaurantInfoViewDelegate {
    func dismissInfoView() {
     
        UIView.animate(withDuration: 0.5) {
            self.visualEffectView.alpha = 0
            self.infoView.alpha = 0
            self.infoView.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        } completion: { (_) in
            self.infoView.removeFromSuperview()
        }

    }
}

