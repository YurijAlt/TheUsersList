//
//  UsersListWithDetailsViewController.swift
//  UsersList
//
//  Created by Юрий Чекалюк on 14.04.2021.
//

import UIKit

class UsersListWithDetailsViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return 10
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellListWithDetails", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = "\(indexPath.row)"
        
        return cell
    }

}




extension UsersListWithDetailsViewController {
    
    
    
    
}
