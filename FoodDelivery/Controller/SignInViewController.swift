//
//  SignUpViewController.swift
//  FoodDelivery
//
//  Created by Taha DEMİREL on 20.07.2023.
//

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet var loginButton: UIButton!
    @IBOutlet var passwordForgotLabel: UILabel!
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var brandNameLabel: UILabel!
    
    override func viewDidLoad() {
        
        emailTextField.layer.cornerRadius = 15
        emailTextField.layer.borderColor = CGColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        emailTextField.layer.borderWidth = 1
        passwordTextField.layer.cornerRadius = 15
        passwordTextField.layer.borderColor = CGColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        passwordTextField.layer.borderWidth = 1
        
        
        BackgroundHelper.setBackground(for: view)
        
        let gradient = GradientHelper.getGradientLayer(bounds: passwordForgotLabel.bounds)
        passwordForgotLabel.textColor = GradientHelper.gradientColor(gradientLayer: gradient)
        gradient.frame = brandNameLabel.bounds
        brandNameLabel.textColor = GradientHelper.gradientColor(gradientLayer: gradient)
        
        let gradientButton =  GradientHelper.getGradientLayer(bounds: loginButton.bounds)
        gradientButton.cornerRadius = CGFloat(15)
        loginButton.layer.insertSublayer(gradientButton, at: 0)
    }
    
    @IBAction func logintButtonTapped (_ sender: UIButton) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1){
            self.performSegue(withIdentifier: "showSignUpScreen", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSignUpScreen" {
            segue.destination.modalPresentationStyle = .fullScreen
        }
    }
}
