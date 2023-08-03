//
//  OnboardingViewController.swift
//  FoodDelivery
//
//  Created by Taha DEMİREL on 14.07.2023.
//

import UIKit

class  OnboardingViewController: UIViewController{
    
    @IBOutlet var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradient = CAGradientLayer()
        let cornerRadius: CGFloat = 15
        
        gradient.cornerRadius = cornerRadius
        gradient.frame = CGRect(x: 0, y: 0, width: 167, height: 57)
        
        let startColor = UIColor(red: 83/255, green: 232/255, blue: 139/255, alpha: 1.0).cgColor
        let endColor = UIColor(red: 21/255, green: 190/255, blue: 119/255, alpha: 1.0).cgColor
        gradient.colors = [startColor, endColor]

        //gradient.startPoint = CGPoint(x: 0.0, y: 0.5)
        //gradient.endPoint = CGPoint(x: 1.0, y: 0.5)
        gradient.locations = [0.0, 1.0]

        nextButton.layer.insertSublayer(gradient, at: 0)

        

    }
    
    
    
    
    @IBAction func nextButtonTapped (_ sender: UIButton) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1){
            self.performSegue(withIdentifier: "showOnboarding2Screen", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showOnboarding2Screen" {
            segue.destination.modalPresentationStyle = .fullScreen
        }
    }
    
    
}
