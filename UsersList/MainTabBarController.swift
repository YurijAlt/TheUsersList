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
        guard let usersListWithDetailsVC = segue.destination as? UsersListWithDetailsViewController else { return }
        usersListWithDetailsVC.user = user
        guard let usersLivtVC = segue.destination as? UsersListViewController else { return }
        usersLivtVC.user = user
    }

}
