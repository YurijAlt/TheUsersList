//
//  DetailsViewController.swift
//  UsersList
//
//  Created by Юрий Чекалюк on 14.04.2021.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        phoneNumberLabel.text = user.phone
        emailLabel.text = user.email
        title = user.fullname
    }
    
    

}
