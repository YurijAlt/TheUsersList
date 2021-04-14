//
//  UsersListWithDetailsViewController.swift
//  UsersList
//
//  Created by Юрий Чекалюк on 14.04.2021.
//

import UIKit

class UsersListWithDetailsViewController: UITableViewController {
    
    var user: User!
    var usersList = User.getUsersList()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return usersList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellListWithDetails", for: indexPath)
        let user = usersList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = user.fullname
        cell.contentConfiguration = content
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue .destination as? DetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = usersList[indexPath.row]
        detailsVC.user = person
    }
    
    // MARK: - Table View delegate
    
}
