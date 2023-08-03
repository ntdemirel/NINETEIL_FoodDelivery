//
//  Onboarding2ViewController.swift
//  FoodDelivery
//
//  Created by Taha DEMİREL on 18.07.2023.
//

import UIKit

class Onboarding2ViewController: UIViewController {
    
    @IBOutlet var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        let gradientButton = GradientHelper.getGradientLayer(bounds: nextButton.bounds)
        gradientButton.cornerRadius = CGFloat(15)
        nextButton.layer.insertSublayer(gradientButton, at: 0)
    }
    
    
    @IBAction func nextButtonTapped (_ sender: UIButton) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1){
            self.performSegue(withIdentifier: "showSignInScreen", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSignInScreen" {
            segue.destination.modalPresentationStyle = .fullScreen
        }
    }
}
