//
//  SignUpViewController.swift
//  FoodDelivery
//
//  Created by Taha DEMİREL on 20.07.2023.
//

import UIKit
import GoogleSignIn

class SignInViewController: UIViewController {

    
    
    @IBOutlet var loginButton: UIButton!
    @IBOutlet var passwordForgotLabel: UILabel!
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var brandNameLabel: UILabel!
    @IBOutlet var googleSignInButton: UIButton!
    @IBOutlet var googleSignInView: UIView!
    @IBOutlet var facebookSignInView: UIView!
    
    let signInConfig = GIDConfiguration.init(clientID: "27884095694-fa1sj7157egsof33hvpam4o2hffscufe.apps.googleusercontent.com")
    override func viewDidLoad() {
        

        emailTextField.setPaddingPoints(28)
        passwordTextField.setPaddingPoints(28)
        
        emailTextField.layer.cornerRadius = 15
        emailTextField.layer.borderColor = CGColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        emailTextField.layer.borderWidth = 1
        passwordTextField.layer.cornerRadius = 15
        passwordTextField.layer.borderColor = CGColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        passwordTextField.layer.borderWidth = 1
        
        
        BackgroundHelper.setBackground(for: view)

        emailTextField.layer.shadowColor = UIColor(red: 0.353, green: 0.424, blue: 0.918, alpha: 0.07).cgColor
        emailTextField.layer.shadowOpacity = 1
        emailTextField.layer.shadowRadius = 50
        emailTextField.layer.shadowOffset = CGSize(width: 12, height: 26)
        
        passwordTextField.layer.shadowColor = UIColor(red: 0.353, green: 0.424, blue: 0.918, alpha: 0.07).cgColor
        passwordTextField.layer.shadowOpacity = 1
        passwordTextField.layer.shadowRadius = 50
        passwordTextField.layer.shadowOffset = CGSize(width: 12, height: 26)
        
        googleSignInView.layer.shadowColor = UIColor(red: 0.353, green: 0.424, blue: 0.918, alpha: 0.07).cgColor
        googleSignInView.layer.shadowOpacity = 1
        googleSignInView.layer.shadowRadius = 50
        googleSignInView.layer.shadowOffset = CGSize(width: 12, height: 26)
        
        
        facebookSignInView.layer.shadowColor = UIColor(red: 0.353, green: 0.424, blue: 0.918, alpha: 0.07).cgColor
        facebookSignInView.layer.shadowOpacity = 1
        facebookSignInView.layer.shadowRadius = 50
        facebookSignInView.layer.shadowOffset = CGSize(width: 12, height: 26)
        
        let gradient = GradientHelper.getGradientLayer(bounds: passwordForgotLabel.bounds)
        passwordForgotLabel.textColor = GradientHelper.gradientColor(gradientLayer: gradient)
        gradient.frame = brandNameLabel.bounds
        brandNameLabel.textColor = GradientHelper.gradientColor(gradientLayer: gradient)
        
        let gradientButton =  GradientHelper.getGradientLayer(bounds: loginButton.bounds)
        gradientButton.cornerRadius = CGFloat(15)
        loginButton.layer.insertSublayer(gradientButton, at: 0)
    }
    


    @IBAction func googleSignInButtonTapped (_ sender: UIButton) {
        GIDSignIn.sharedInstance.signIn(withPresenting: self) { user, error in
            guard error == nil else {return}
            guard let user = user else {return}

        }
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
extension  UITextField{

    func setPaddingPoints(_ horizontalAmount: CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: horizontalAmount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
        self.rightView = paddingView
        self.rightViewMode = .always
    }
    
    func setPaddingPoints(left: CGFloat, right: CGFloat) {
        let leftPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: left, height: self.frame.size.height))
        let rightPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: right, height: self.frame.size.height))
        
        self.leftView = leftPaddingView
        self.leftViewMode = .always
        self.rightView = rightPaddingView
        self.rightViewMode = .always
    }
}
