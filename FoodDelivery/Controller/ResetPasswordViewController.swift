//
//  ResetPasswordViewController.swift
//  FoodDelivery
//
//  Created by Taha DEMİREL on 31.07.2023.
//

import UIKit

class ResetPasswordViewController: UIViewController{
    
    @IBOutlet var nextButton: UIButton!
    @IBOutlet var newPasswordTextField: UITextField!
    @IBOutlet var confirmPasswordTextField: UITextField!
    @IBOutlet var newPasswordView: UIView!
    @IBOutlet var confirmPasswordView: UIView!
    @IBOutlet var newPasswordShowButton: UIButton!
    @IBOutlet var confirmPasswordShowButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradientButton = GradientHelper.getGradientLayer(bounds: nextButton.bounds)
        gradientButton.cornerRadius = CGFloat(15)
        nextButton.layer.insertSublayer(gradientButton, at: 0)
        
        newPasswordTextField.layer.cornerRadius = 22
        confirmPasswordTextField.layer.cornerRadius = 22
        
        newPasswordView.layer.cornerRadius = 22
        confirmPasswordView.layer.cornerRadius = 22
        
        newPasswordView.layer.masksToBounds = false
        newPasswordView.layer.shadowColor = UIColor(red: 0.353, green: 0.424, blue: 0.918, alpha: 0.07).cgColor
        newPasswordView.layer.shadowOpacity = 1
        newPasswordView.layer.shadowRadius = 50
        newPasswordView.layer.shadowOffset = CGSize(width: 0, height: 0)

        
        confirmPasswordView.layer.masksToBounds = false
        confirmPasswordView.layer.shadowColor = UIColor(red: 0.353, green: 0.424, blue: 0.918, alpha: 0.07).cgColor
        confirmPasswordView.layer.shadowOpacity = 1
        confirmPasswordView.layer.shadowRadius = 50
        confirmPasswordView.layer.shadowOffset = CGSize(width: 0, height: 0)
        confirmPasswordView.layer.shadowPath = UIBezierPath(roundedRect: confirmPasswordView.bounds, cornerRadius: confirmPasswordView.layer.cornerRadius).cgPath

    }
    
    @IBAction func newPasswordShowButtonTapped(_ sender: UIButton){
        
        newPasswordTextField.isSecureTextEntry = !newPasswordTextField.isSecureTextEntry
        
        if !newPasswordTextField.isSecureTextEntry {
            newPasswordShowButton.setImage(UIImage(named: "EyeIcon"), for: .normal)
        }else{
            newPasswordShowButton.setImage(UIImage(named: "EyeIconDisable"), for: .normal)
        }
        
    }
    
    @IBAction func confirmPasswordShowButtonTapped(_ sender: UIButton){
        
        confirmPasswordTextField.isSecureTextEntry = !confirmPasswordTextField.isSecureTextEntry

        if !confirmPasswordTextField.isSecureTextEntry {
            confirmPasswordShowButton.setImage(UIImage(named: "EyeIcon"), for: .normal)

        }else{
            confirmPasswordShowButton.setImage(UIImage(named: "EyeIconDisable"), for: .normal)
        }
        
    }
}
