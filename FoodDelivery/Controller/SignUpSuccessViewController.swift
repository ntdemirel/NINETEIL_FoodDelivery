//
//  SignUpSuccessViewController.swift
//  FoodDelivery
//
//  Created by Taha DEMİREL on 28.07.2023.
//

import UIKit

class SignUpSuccessViewCOntroller: UIViewController {
    
    
    @IBOutlet var nextButton: UIButton!
    @IBOutlet var congratsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        BackgroundHelper.setBackground(for: view)
        
        let gradientLabel = GradientHelper.getGradientLayer(bounds: congratsLabel.bounds)
        congratsLabel.textColor =  GradientHelper.gradientColor(gradientLayer: gradientLabel)
        
        let gradientButton = GradientHelper.getGradientLayer(bounds: nextButton.bounds)
        nextButton.layer.insertSublayer(gradientButton, at: 0)
        
        
    }
}
