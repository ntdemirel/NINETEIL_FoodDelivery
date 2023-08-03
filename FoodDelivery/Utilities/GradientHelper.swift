//
//  GradientHelper.swift
//  FoodDelivery
//
//  Created by Taha DEMİREL on 17.07.2023.
//

import UIKit

class GradientHelper {
    
    static func getGradientLayer ( bounds:CGRect) -> CAGradientLayer {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        let startColor = UIColor(red: 83/255, green: 232/255, blue: 139/255, alpha: 1.0).cgColor
        let endColor = UIColor(red: 21/255, green: 190/255, blue: 119/255, alpha: 1.0).cgColor
        
        gradient.colors = [startColor, endColor]
        gradient.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradient.endPoint = CGPoint(x: 1.0, y: 0.5)
        return gradient
    }
    
    static func gradientColor(gradientLayer: CAGradientLayer) -> UIColor? {
        UIGraphicsBeginImageContext(gradientLayer.bounds.size)
        gradientLayer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return UIColor(patternImage: image!)
    }
}
