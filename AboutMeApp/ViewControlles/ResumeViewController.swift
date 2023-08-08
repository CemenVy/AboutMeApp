//
//  ResumViewController.swift
//  AboutMeApp
//
//  Created by Семен Выдрин on 08.08.2023.
//

import UIKit

final class ResumeViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var avatarImage: UIImageView?
    
    @IBOutlet var nameLabel: UILabel?
    @IBOutlet var surnameLabel: UILabel?
    @IBOutlet var ageLabel: UILabel?
    @IBOutlet var nationalityLabel: UILabel?
    
    // MARK: - Public Properties
    var name = ""
    var surname = ""
    var age = ""
    var nationality = ""
    var resume = ""
    var avatar: UIImage?
    
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
        
        avatarImage?.layer.cornerRadius = (avatarImage?.frame.width ?? 0) / 2
        avatarImage?.clipsToBounds = true
        avatarImage?.image = avatar
      
        nameLabel?.text = "Имя: \(name)"
        surnameLabel?.text = "Фамилия: \(surname)"
        ageLabel?.text = "Возраст: \(age)"
        nationalityLabel?.text = "Национальность: \(nationality)"
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let bioVC = segue.destination as? BioViewController
        bioVC?.resume = resume
    }
    
}


