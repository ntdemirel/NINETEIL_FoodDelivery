//
//  PaymentMethodViewController.swift
//  FoodDelivery
//
//  Created by Taha DEMİREL on 25.07.2023.
//

import UIKit

class PaymentMethodViewController: UIViewController {
    
    @IBOutlet var nextButton: UIButton!
    @IBOutlet var backButton: UIButton!
    @IBOutlet var paymentPaypalButton: UIButton!
    @IBOutlet var paymentVisaButton: UIButton!
    @IBOutlet var paymentPayoneerButton: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        BackgroundHelper.setBackground2(for: view)

        
        
        paymentPaypalButton.layer.shadowColor = UIColor(red: 0.353, green: 0.424, blue: 0.918, alpha: 0.07).cgColor
        paymentPaypalButton.layer.shadowOpacity = 1
        paymentPaypalButton.layer.shadowRadius = 10
        paymentPaypalButton.layer.shadowOffset = CGSize(width: 12, height: 26)
        paymentPaypalButton.layer.masksToBounds = false
        
        paymentVisaButton.layer.shadowColor = UIColor(red: 0.353, green: 0.424, blue: 0.918, alpha: 0.07).cgColor
        paymentVisaButton.layer.shadowOpacity = 1
        paymentVisaButton.layer.shadowRadius = 50
        paymentVisaButton.layer.shadowOffset = CGSize(width: 12, height: 26)
        paymentVisaButton.layer.masksToBounds = false
        
        paymentPayoneerButton.layer.shadowColor = UIColor(red: 0.353, green: 0.424, blue: 0.918, alpha: 0.07).cgColor
        paymentPayoneerButton.layer.shadowOpacity = 1
        paymentPayoneerButton.layer.shadowRadius = 50
        paymentPayoneerButton.layer.shadowOffset = CGSize(width: 0, height: 0)
        paymentPayoneerButton.layer.masksToBounds = false
        
        
        let gradientButton = GradientHelper.getGradientLayer(bounds: nextButton.bounds)
        gradientButton.cornerRadius = CGFloat(15)
        nextButton.layer.insertSublayer(gradientButton, at: 0)
    }
    
    
    
    @IBAction func nextButtonTapped(_sender: UIButton){
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1){
            self.performSegue(withIdentifier: "showUploadPhotoScreen", sender: self)
        }
    }
    
    @IBAction func backButtonTapped(_sender: UIButton){
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1){
            self.performSegue(withIdentifier: "showSignUpProcessScreen", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSignUpProcessScreen" {
            segue.destination.modalPresentationStyle = .fullScreen
        }else if segue.identifier == "showUploadPhotoScreen"{
            segue.destination.modalPresentationStyle = .fullScreen
        }
    }
    
    

}
