//
//  Bio.swift
//  AboutMeApp
//
//  Created by Семен Выдрин on 08.08.2023.
//

import UIKit

final class BioViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var resumeLabel: UILabel?
    
    // MARK: - Public Properties
    var resume = ""
    
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
        
        resumeLabel?.text = resume
    }

}
