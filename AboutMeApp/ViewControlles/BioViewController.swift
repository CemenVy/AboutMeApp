//
//  Bio.swift
//  AboutMeApp
//
//  Created by Семен Выдрин on 08.08.2023.
//

import UIKit

final class BioViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var resumeLabel: UILabel!
    
    // MARK: - Public Properties
    var user:User!
    
    // MARK: - View Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        resumeLabel.text = user.person.resume
    }

}
