//
//  BackgroundHelper.swift
//  FoodDelivery
//
//  Created by Taha DEMİREL on 20.07.2023.
//

import UIKit

class BackgroundHelper {
    
    static func setBackground(for view: UIView){
        
        let backgroundImageView = UIImageView()
        view.addSubview(backgroundImageView)
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        backgroundImageView.image = UIImage(named: "Background")
        view.sendSubviewToBack(backgroundImageView)
        
    }
    
    static func setBackground2(for view: UIView){
        
        let backgroundImageView = UIImageView()
        
        view.addSubview(backgroundImageView)
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        //backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        backgroundImageView.alpha = 0.2
        backgroundImageView.image = UIImage(named: "Background2")
        view.sendSubviewToBack(backgroundImageView)
    }
}
