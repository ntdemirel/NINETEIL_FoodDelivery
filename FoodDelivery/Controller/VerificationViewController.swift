//
//  VerificationViewController.swift
//  FoodDelivery
//
//  Created by Taha DEMİREL on 29.07.2023.
//

import UIKit

class VerificationViewController: UIViewController{
    
    @IBOutlet var digitView: UIView!
    @IBOutlet var nextButton: UIButton!
    @IBOutlet var digit1TextField: UITextField!
    @IBOutlet var digit2TextField: UITextField!
    @IBOutlet var digit3TextField: UITextField!
    @IBOutlet var digit4TextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        digit1TextField.delegate = self
        digit2TextField.delegate = self
        digit3TextField.delegate = self
        digit4TextField.delegate = self
        
        digitView.clipsToBounds = false
        digitView.layer.shadowColor = UIColor(red: 0.353, green: 0.424, blue: 0.918, alpha: 0.07).cgColor
        digitView.layer.shadowOpacity = 1
        digitView.layer.shadowRadius = 50
        digitView.layer.shadowOffset = CGSize(width: 12, height: 26)
        digitView.layer.cornerRadius = 22
        
        let gradientButton = GradientHelper.getGradientLayer(bounds: nextButton.bounds)
        gradientButton.cornerRadius = 15
        nextButton.layer.insertSublayer(gradientButton, at: 0)
    }
    
}

extension VerificationViewController: UITextFieldDelegate{
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool{
        if let digit = Int(string) {
            
            if textField == digit1TextField {
                digit1TextField.text = string
                digit2TextField.becomeFirstResponder()
                    
            }else if textField == digit2TextField {
                digit2TextField.text = string
                digit3TextField.becomeFirstResponder()
                
            }else if textField == digit3TextField {
                digit3TextField.text = string
                digit4TextField.becomeFirstResponder()
                
            }else if textField == digit4TextField {
                digit4TextField.text = string
                textField.resignFirstResponder()
            }
            return true
            
        }else if string.isEmpty {
            
            if textField == digit1TextField {
                return true
            }else if textField == digit2TextField {
                if textField.text?.count == 0{
                    digit1TextField.text = ""
                    digit1TextField.becomeFirstResponder()
                }
                
            }else if textField == digit3TextField {
                if textField.text?.count == 0 {
                    digit2TextField.text = ""
                    digit2TextField.becomeFirstResponder()
                }
                
            }else if textField == digit4TextField {
                if textField.text?.count == 0 {
                    digit3TextField.text = ""
                    digit3TextField.becomeFirstResponder()
                }
            }
            return true
        }else {
            return false
        }
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.selectAll(nil)
    }
    
    func textFieldShouldReturn (_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        if textField == digit2TextField {
            digit1TextField.becomeFirstResponder()
        } else if textField == digit3TextField {
            digit2TextField.becomeFirstResponder()
        } else if textField == digit4TextField {
            digit3TextField.becomeFirstResponder()
        }
        return true
    }
    

}
