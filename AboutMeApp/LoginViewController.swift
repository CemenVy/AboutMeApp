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
    private let myUserName = "Cemen"
    private let myPassword = "12345"
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as? WelcomeViewController
        welcomeVC?.greeting = "Welcom, \(userNameTextField?.text ?? "")!"
    }

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard let userName = userNameTextField?.text, !userName.isEmpty,
              let userPassword = passwordTextField?.text, !userPassword.isEmpty else {
            showAlert(withTitel: "Oops!", andMessage: "Please enter your login and password.")
            return false
        }
        
        if userNameTextField?.text == myUserName, passwordTextField?.text == myPassword {
            return true
        } else {
            showAlert(withTitel: "Attention!", andMessage: "Your login or password is invalid.")
            userNameTextField?.text = ""
            passwordTextField?.text = ""
            return false
        }
    }
    
    // MARK: - IB Actions
    @IBAction func forgotUserNameButtonTapped() {
        showAlert(withTitel: "User name", andMessage: "Cemen")
    }
    
    @IBAction func forgotPasswordButtonTapped() {
        showAlert(withTitel: "Password", andMessage: "12345")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField?.text = ""
        passwordTextField?.text = ""
    }
    
    // MARK: - Private Methods
    private func showAlert(withTitel titel: String, andMessage message: String) {
        let alert = UIAlertController(
            title: titel,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }

}

