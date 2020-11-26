//
//  AboutAsViewController.swift
//  HipHuta
//
//  Created by Sebastian Sciuba on 26/11/2020.
//

import UIKit

class AboutAsViewController: UIViewController {
    
    var descripctionTextView : UITextView = {
        let textView = UITextView()
        let attributedText = NSMutableAttributedString(string: "Hip Huta", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 70)])
        
        attributedText.append(NSAttributedString(string: "\nJedz, baw się i zakochaj w Nowej Hucie", attributes:
            [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 30)]))
        
        attributedText.append(NSAttributedString(string: "\n\n\nBlog poświęcony kawiarniom, restauracjom i fajnym inicjatywom w najmłodszej dzielnicy Krakowa. \nDołącz do nas i pokaż, że NH jest „hip”!\n\nUważasz, że powinniśmy odwiedzić twój lokal? Znalazłeś ciekawe miejsce w Hucie o którym powinniśmy napisać? Chciałbyś z nami współpracować?\n\nKoniecznie daj nam o tym znać na hiphuta@gmail.com lub Facebooku. \nOdwiedź też naszego Instagrama", attributes: [NSAttributedString.Key.font:UIFont.systemFont(ofSize: 20),NSAttributedString.Key.foregroundColor:UIColor.gray]))
        
        textView.attributedText = attributedText
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment =  .center
        textView.textColor = .black
        textView.isEditable = false
        
        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        title = "O Nas"
        
        setUpDescView()
    }
    
    func setUpDescView() {
        view.addSubview(descripctionTextView)
        
        descripctionTextView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        descripctionTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
        descripctionTextView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24).isActive = true
        descripctionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
    }
}

