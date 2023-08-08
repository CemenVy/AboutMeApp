//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Семен Выдрин on 04.08.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    // MARK: - IB Outlets
    @IBOutlet var userNameTextField: UITextField?
    @IBOutlet var passwordTextField: UITextField?
    
    // MARK: - Private Properties
    private var user: User?
    private var fullName: String?

    // MARK: - View Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        
        user = User.getUser()
    
        userNameTextField?.text = user?.login
        passwordTextField?.text = user?.password
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.guestName = "Aleksey"
        welcomeVC.personFullName = user?.person.fullName ?? ""
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String,sender: Any?) -> Bool {
        guard userNameTextField?.text == user?.login,passwordTextField?.text == user?.password else {
            showAlert(
                withTitle: "Attention!",
                andMessage: "Your login or password is invalid."
            )
            return false
        }
        return true
    }
    
    // MARK: - Touch Handling
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - IB Actions
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(withTitle: "User name", andMessage: "\(user?.login ?? "")")
        : showAlert(withTitle: "Password", andMessage: "\(user?.password ?? "")")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField?.text = ""
        passwordTextField?.text = ""
    }
    
    // MARK: - Private Methods
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTextField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
    
}

