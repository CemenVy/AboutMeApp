//
//  GreetingViewController.swift
//  AboutMeApp
//
//  Created by Семен Выдрин on 04.08.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    // MARK: - IB Outlets
    @IBOutlet var greetingLabelTF: UILabel!
    @IBOutlet var introduceLabelTF: UILabel!
    
    // MARK: - Public Properties
    var user: User!
    
    // MARK: - View Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        
        greetingLabelTF.text = "Добро пожаловать, \(user.login)!"
        introduceLabelTF.text = "Меня зовут \(user.person.fullName)."
    }
}


