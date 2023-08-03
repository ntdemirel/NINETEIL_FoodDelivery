//
//  ViewController.swift
//  FoodDelivery
//
//  Created by Taha DEMİREL on 13.07.2023.
//
import Foundation
import UIKit

class ViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        BackgroundHelper.setBackground(for: view)
        
        let gradient = GradientHelper.getGradientLayer(bounds: nameLabel.bounds)
        nameLabel.textColor = GradientHelper.gradientColor( gradientLayer: gradient)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.performSegue(withIdentifier: "showOnboardingScreen", sender: self)
        }
    }
    


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showOnboardingScreen" {
            segue.destination.modalPresentationStyle = .fullScreen
        }
    }

    
}

