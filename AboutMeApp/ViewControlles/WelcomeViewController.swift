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
    
    // MARK: - View Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(
            topColor: AppStyles.primaryColor,
            bottomColor: AppStyles.secondaryColor
        )
        
        greetingLabelTF?.text = "Добро пожаловать, \(guestName)!"
        introduceLabelTF?.text = "Меня зовут \(personFullName)."
    }
}


