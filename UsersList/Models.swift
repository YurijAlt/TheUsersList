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
    //let photo: String
    
     
    static func getUsersList() -> [User] {
        var usersList: [User] = []
        let userData = Person()
        
        for _ in 1...userData.names.count {
        let user = User(
            name: userData.getRandomName(),
            surname: userData.getRandomSurname(),
            phone: userData.getRandomPhoneNumber(),
            email: userData.getRandomEmail()
        )
            usersList.append(user)
    }
       return usersList
    }
    
}

