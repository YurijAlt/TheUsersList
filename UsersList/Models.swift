//
//  Models.swift
//  UsersList
//
//  Created by Юрий Чекалюк on 14.04.2021.
//

struct User {
    let name: String
    let surname: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
    let phone: String
    let email: String
    let photo: String
}

