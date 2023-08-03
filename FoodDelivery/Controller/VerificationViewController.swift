//
//  VerificationViewController.swift
//  FoodDelivery
//
//  Created by Taha DEMİREL on 29.07.2023.
//

import UIKit

class VerificationViewController: UIViewController{
    
    @IBOutlet var digitView: UIView!
    @IBOutlet var nextButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        digitView.clipsToBounds = false
        digitView.layer.shadowColor = UIColor(red: 0.353, green: 0.424, blue: 0.918, alpha: 0.07).cgColor
        digitView.layer.shadowOpacity = 1
        digitView.layer.shadowRadius = 50
        digitView.layer.shadowOffset = CGSize(width: 12, height: 26)
        digitView.layer.cornerRadius = 22
        
        let gradientButton = GradientHelper.getGradientLayer(bounds: nextButton.bounds)
        gradientButton.cornerRadius = 15
        nextButton.layer.insertSublayer(gradientButton, at: 0)
    }
}
