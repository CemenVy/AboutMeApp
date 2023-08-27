//
//  TabBarController.swift
//  AboutMeApp
//
//  Created by Семен Выдрин on 27.08.2023.
//

import UIKit

final class TabBarController: UITabBarController {
    var user: User!
    
    // MARK: - View Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        let appearance = UITabBarAppearance()
        tabBar.standardAppearance = appearance
        tabBar.scrollEdgeAppearance = appearance
        
        tabBar.items?.last?.title = user.person.fullName
        
        transferData()
    }
    
    // MARK: - Private Properties
    private func transferData() {
        guard let viewControllers else { return }
        
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                let userResumeVS = navigationVC.topViewController
                guard let userResumeVS = userResumeVS as? ResumeViewController else {
                    return
                }
                userResumeVS.user = user
            }
        }
    }
}
