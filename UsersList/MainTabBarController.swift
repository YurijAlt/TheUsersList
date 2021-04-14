//
//  MainTabBarController.swift
//  UsersList
//
//  Created by Юрий Чекалюк on 15.04.2021.
//

import UIKit

class MainTabBarController: UITabBarController {

    private let usersList = User.getUsersList()
    var user: User!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        for viewController in viewControllers {
            if let usersWithDetailsVC = viewController as? UsersListWithDetailsViewController {
                usersWithDetailsVC.user = user
                usersWithDetailsVC.usersList = usersList
                
            } else if let usersListVC = viewController as? UsersListViewController {
                usersListVC.user = user
                usersListVC.usersList = usersList
            }
        }
    }

}
