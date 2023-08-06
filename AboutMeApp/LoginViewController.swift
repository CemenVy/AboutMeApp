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
    private let userName = "Cemen"
    private let userPassword = "12345"
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as? WelcomeViewController
        welcomeVC?.greeting = "Welcome, \(userNameTextField?.text ?? "")!"
    }

    override func shouldPerformSegue(withIdentifier identifier: String,sender: Any?) -> Bool {
        guard let name = userNameTextField?.text,!name.isEmpty,
              let password = passwordTextField?.text,!password.isEmpty else {
            showAlert(
                withTitle: "Oops!",
                andMessage: "Please enter your login and password."
            )
            return false
        }
        
        if userNameTextField?.text == userName,
           passwordTextField?.text == userPassword {
            return true
        } else {
            showAlert(
                withTitle: "Attention!",
                andMessage: "Your login or password is invalid."
            )
            return false
        }
    }
    
    // MARK: - IB Actions
    @IBAction func forgotUserNameButtonTapped() {
        showAlert(withTitle: "User name", andMessage: "Cemen")
    }
    
    @IBAction func forgotPasswordButtonTapped() {
        showAlert(withTitle: "Password", andMessage: "12345")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField?.text = ""
        passwordTextField?.text = ""
    }
    
    // MARK: - Private Methods
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTextField?.text = ""
        }
        
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
    
}

