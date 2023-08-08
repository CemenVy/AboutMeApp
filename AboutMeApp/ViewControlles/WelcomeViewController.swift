//
//  GreetingViewController.swift
//  AboutMeApp
//
//  Created by Семен Выдрин on 04.08.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    // MARK: - IB Outlets
    @IBOutlet var greetingLabelTF: UILabel?
    @IBOutlet var introduceLabelTF: UILabel?
    
    // MARK: - Public Properties
    var guestName = ""
    var personFullName = ""
    
    // MARK: - Private Properties
    private let primaryColor = UIColor(
        red: 252/255,
        green: 175/255,
        blue: 69/255,
        alpha: 1
    )
    private let secondaryColor = UIColor(
        red: 131/255,
        green: 58/255,
        blue: 180/255,
        alpha: 1
    )
    
    // MARK: - View Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        greetingLabelTF?.text = "Добро пожаловать, \(guestName)!"
        introduceLabelTF?.text = "Меня зовут \(personFullName)"
    }
}

// MARK: - Set background color
extension UIView {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
