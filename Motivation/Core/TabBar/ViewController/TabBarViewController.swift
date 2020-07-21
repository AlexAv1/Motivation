//
//  TabBarViewController.swift
//  Motivation
//
//  Created by iMac on 04.07.2020.
//  Copyright © 2020 AlexAviJr. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }

}

// MARK: -
// MARK: - Configure

private extension TabBarViewController {
    
    func configure() {
        configureViewControllers()
    }
    
    func configureViewControllers() {
        let habitsVC = UIStoryboard(name: "Habits", bundle: nil).instantiateInitialViewController() as! HabitsViewController
        let habitsTabBarItem = UITabBarItem()
        habitsTabBarItem.image = UIImage(named: "Habits")
        habitsTabBarItem.selectedImage = UIImage(named: "Habits")
        habitsTabBarItem.title = "Привычки"
        habitsVC.tabBarItem = habitsTabBarItem
        
        let shopVC = UIStoryboard(name: "Shop", bundle: nil).instantiateInitialViewController() as! ShopViewController
        let shopTabBarItem = UITabBarItem()
        shopTabBarItem.image = UIImage(named: "Shop")
        shopTabBarItem.selectedImage = UIImage(named: "Shop")
        shopTabBarItem.title = "Магазин"
        shopVC.tabBarItem = shopTabBarItem
        
        let settingVC = UIStoryboard(name: "Setting", bundle: nil).instantiateInitialViewController() as! SettingViewController
        let settingTabBarItem = UITabBarItem()
        settingTabBarItem.image = UIImage(named: "Setting")
        settingTabBarItem.selectedImage = UIImage(named: "Setting")
        settingTabBarItem.title = "Настройки"
        settingVC.tabBarItem = settingTabBarItem
        
        viewControllers = [habitsVC, shopVC, settingVC].map {
            let navController = UINavigationController(rootViewController: $0)
            return navController
        }
    }
    
}
