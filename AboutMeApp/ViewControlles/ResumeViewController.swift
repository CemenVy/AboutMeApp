//
//  ResumViewController.swift
//  AboutMeApp
//
//  Created by Семен Выдрин on 08.08.2023.
//

import UIKit

final class ResumeViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var photoImage: UIImageView! {
        didSet {
            photoImage.layer.cornerRadius = photoImage.frame.height / 2
        }
    }
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var nationalityLabel: UILabel!
    
    // MARK: - Public Properties
    var user: User!
    
    // MARK: - View Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        
        photoImage.image = UIImage(named: user.person.photo)
        title = user.person.fullName
        nameLabel.text = "Имя: \(user.person.name)"
        surnameLabel.text = "Фамилия: \(user.person.surname)"
        ageLabel.text = "Возраст: \(user.person.age)"
        nationalityLabel.text = "Национальность: \(user.person.nationality)"
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let bioVC = segue.destination as? BioViewController
        bioVC?.user = user
    }
    
}


