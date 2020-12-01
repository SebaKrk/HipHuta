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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView!.register(TheBestInNhCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
        collectionView.backgroundColor = .white
        title = "The best in Nowa Huta"
        //        collectionView.isPagingEnabled = true
        
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
}

