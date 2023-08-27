//
//  AppStyles.swift
//  AboutMeApp
//
//  Created by Семен Выдрин on 09.08.2023.
//

import UIKit

// MARK: - Set background color
extension UIView {
    func addVerticalGradientLayer() {
        let primaryColor = UIColor(
            red: 252/255,
            green: 175/255,
            blue: 69/255,
            alpha: 1
        )
        
        let secondaryColor = UIColor(
            red: 131/255,
            green: 58/255,
            blue: 180/255,
            alpha: 1
        )
        
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [primaryColor.cgColor, secondaryColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
