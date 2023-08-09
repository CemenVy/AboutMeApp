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
    private var user = User.getUser()
    
    // MARK: - View Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(
            topColor: AppStyles.primaryColor,
            bottomColor: AppStyles.secondaryColor
        )
        
        userNameTextField?.text = user.login
        passwordTextField?.text = user.password
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as? UITabBarController
        tabBarController?.viewControllers?.forEach{ viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.guestName = "Алексей"
                welcomeVC.personFullName = user.person.fullName
            } else if let navigationVC = viewController as? UINavigationController {
                let resumeVS = navigationVC.topViewController as? ResumeViewController
                resumeVS?.name = user.person.name
                resumeVS?.surname = user.person.surname
                resumeVS?.age = String(user.person.age)
                resumeVS?.nationality = user.person.nationality
                resumeVS?.resume = user.person.resume
                resumeVS?.avatar = user.person.avatar
            }
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String,sender: Any?) -> Bool {
        guard userNameTextField?.text == user.login,passwordTextField?.text == user.password else {
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
        ? showAlert(withTitle: "User name", andMessage: "\(user.login)")
        : showAlert(withTitle: "Password", andMessage: "\(user.password)")
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
// MARK: - Set background color
extension UIView {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
