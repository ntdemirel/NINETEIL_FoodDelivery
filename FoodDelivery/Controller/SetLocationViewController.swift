//
//  SetLocationViewController.swift
//  FoodDelivery
//
//  Created by Taha DEMİREL on 27.07.2023.
//

import UIKit

class SetLocationViewController: UIViewController {
    
    @IBOutlet var locationView: UIView!
    @IBOutlet var nextButton: UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        BackgroundHelper.setBackground2(for: view)
        
        let gradientButton = GradientHelper.getGradientLayer(bounds: nextButton.bounds)
        gradientButton.cornerRadius = CGFloat(15)
        nextButton.layer.insertSublayer(gradientButton, at: 0)
        
        locationView.clipsToBounds = false
        locationView.layer.shadowColor = UIColor(red: 0.353, green: 0.424, blue: 0.918, alpha: 0.07).cgColor
        locationView.layer.shadowOpacity = 1
        locationView.layer.shadowRadius = 50
        locationView.layer.shadowOffset = CGSize(width: 12, height: 26)
        locationView.layer.cornerRadius = 22
    }
}
