//
//  GreetingViewController.swift
//  AboutMeApp
//
//  Created by Семен Выдрин on 04.08.2023.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var greetinglabelTF: UILabel?
    
    var greeting: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        greetinglabelTF?.text = greeting
    }
    
}
