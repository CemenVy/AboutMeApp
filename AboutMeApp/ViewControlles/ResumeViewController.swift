//
//  ResumViewController.swift
//  AboutMeApp
//
//  Created by Семен Выдрин on 08.08.2023.
//

import UIKit

final class ResumeViewController: UIViewController {

    @IBOutlet var avatarImage: UIImage?
    
    @IBOutlet var nameTextField: UITextField?
    @IBOutlet var surnameTextField: UITextField?
    @IBOutlet var ageTextField: UITextField?
    @IBOutlet var nationalityTextField: UITextField?
    
    var personName = ""
    var personSurname = ""
    var personAge = ""
    var personNationality = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

}
