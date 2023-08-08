//
//  SignUpProcessViewController.swift
//  FoodDelivery
//
//  Created by Taha DEMİREL on 25.07.2023.
//

import UIKit

class SignUpProcessViewController :UIViewController {
    
    
    @IBOutlet var nextButton: UIButton!
    @IBOutlet var firstNameTextField: UITextField!
    @IBOutlet var lastNameTextField: UITextField!
    @IBOutlet var mobileNumberTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        BackgroundHelper.setBackground2(for: view)
        
        firstNameTextField.setPaddingPoints(20)
        lastNameTextField.setPaddingPoints(20)
        mobileNumberTextField.setPaddingPoints(20)
        
        let gradientButton = GradientHelper.getGradientLayer(bounds: nextButton.bounds)
        gradientButton.cornerRadius = CGFloat(15)
        nextButton.layer.insertSublayer(gradientButton, at: 0)
        
        
        
        firstNameTextField.layer.shadowColor = UIColor(red: 0.353, green: 0.424, blue: 0.918, alpha: 0.07).cgColor
        firstNameTextField.layer.shadowOpacity = 1
        firstNameTextField.layer.shadowRadius = 50
        firstNameTextField.layer.shadowOffset = CGSize(width: 0, height: 0)
        
        lastNameTextField.layer.shadowColor = UIColor(red: 0.353, green: 0.424, blue: 0.918, alpha: 0.07).cgColor
        lastNameTextField.layer.shadowOpacity = 1
        lastNameTextField.layer.shadowRadius = 50
        lastNameTextField.layer.shadowOffset = CGSize(width: 0, height: 0)
        
        mobileNumberTextField.layer.shadowColor = UIColor(red: 0.353, green: 0.424, blue: 0.918, alpha: 0.07).cgColor
        mobileNumberTextField.layer.shadowOpacity = 1
        mobileNumberTextField.layer.shadowRadius = 50
        mobileNumberTextField.layer.shadowOffset = CGSize(width: 0, height: 0)
        
        
        
    }
    @IBAction func nextButtonTapped(_ sender: UIButton) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1){
            self.performSegue(withIdentifier: "showPaymentMothodScreen", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showPaymentMothodScreen" {
            segue.destination.modalPresentationStyle = .fullScreen
        }
    }
}
