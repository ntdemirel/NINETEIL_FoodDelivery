//
//  SignUpViewController.swift
//  FoodDelivery
//
//  Created by Taha DEMİREL on 20.07.2023.
//

import UIKit

class SignUpViewController: UIViewController{
    

    @IBOutlet var createAccountButton: UIButton!
    @IBOutlet var keepMeSignedInCheckboxButton: UIButton!
    @IBOutlet var emailPricingCheckboxButton: UIButton!
    
    @IBOutlet var alreadyHaveAnAccountLabel: UILabel!
    @IBOutlet var appNameLabel: UILabel!
    
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usernameTextField.layer.cornerRadius = 15
        usernameTextField.layer.borderColor = CGColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        usernameTextField.layer.borderWidth = 1
        emailTextField.layer.cornerRadius = 15
        emailTextField.layer.borderColor = CGColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        emailTextField.layer.borderWidth = 1
        passwordTextField.layer.cornerRadius = 15
        passwordTextField.layer.borderColor = CGColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        passwordTextField.layer.borderWidth = 1
        
        BackgroundHelper.setBackground(for: view)
        
        
        let gradient = GradientHelper.getGradientLayer(bounds: alreadyHaveAnAccountLabel.bounds)
        alreadyHaveAnAccountLabel.textColor = GradientHelper.gradientColor(gradientLayer: gradient)
        gradient.frame = appNameLabel.bounds
        appNameLabel.textColor = GradientHelper.gradientColor(gradientLayer: gradient)
        
        
        
        let gradientButton = GradientHelper.getGradientLayer(bounds: createAccountButton.bounds)
        gradientButton.cornerRadius = CGFloat(15)
        createAccountButton.layer.insertSublayer(gradientButton, at: 0)
        
        let gradientCheckboxButton = GradientHelper.getGradientLayer(bounds: keepMeSignedInCheckboxButton.bounds)
        gradientCheckboxButton.cornerRadius = CGFloat(11)
        keepMeSignedInCheckboxButton.layer.insertSublayer(gradientCheckboxButton, at: 0)
        
        let gradientCheckboxButton2 = GradientHelper.getGradientLayer(bounds: emailPricingCheckboxButton.bounds)
        gradientCheckboxButton2.cornerRadius = CGFloat(11)
        emailPricingCheckboxButton.layer.insertSublayer(gradientCheckboxButton2, at: 0)

        
    }
    
    @IBAction func keppMeSignedInCheckboxButtonTapped(_ sender: UIButton) {
        
        keepMeSignedInCheckboxButton.isSelected = !keepMeSignedInCheckboxButton.isSelected
        let emptyImage = UIImage()
        if keepMeSignedInCheckboxButton.isSelected {
            keepMeSignedInCheckboxButton.setImage(UIImage(named: "Check"), for: .normal)
        }else{
            keepMeSignedInCheckboxButton.setImage(emptyImage, for: .normal)
        }

    }
    
    @IBAction func emailPricingCheckboxButtonTapped(_ sender: UIButton) {
        
        emailPricingCheckboxButton.isSelected = !emailPricingCheckboxButton.isSelected
        let emptyImage = UIImage()
        if emailPricingCheckboxButton.isSelected {
            emailPricingCheckboxButton.setImage(UIImage(named: "Check"), for: .normal)
        }else{
            emailPricingCheckboxButton.setImage(emptyImage, for: .normal)
        }

    }
    
    @IBAction func nextButtonTapped(_ sender: UIButton) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1){
            self.performSegue(withIdentifier: "showSignUpProcessScreen", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSignUpProcessScreen" {
            segue.destination.modalPresentationStyle = .fullScreen
        }
    }
    

}


