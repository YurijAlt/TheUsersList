//
//  Service.swift
//  UsersList
//
//  Created by Юрий Чекалюк on 14.04.2021.
//

class Person {
    
    var names = [
        "Bruce",
        "John",
        "Steven",
        "Aaron",
        "Tim",
        "Allan",
        "Sharon",
        "Ted",
        "Carl",
        "Nikola"
    ]
    
    var surnames = [
        "Butler",
        "Smith",
        "Black",
        "Robertson",
        "Murphy",
        "Williams",
        "Isaacson",
        "Jankin",
        "Pennyworth",
        "Dow"
    ]
    
    var phoneNumbers = [
        "+79999999999",
        "+79999999998",
        "+79999999997",
        "+79999999996",
        "+79999999995",
        "+79999999994",
        "+79999999993",
        "+79999999992",
        "+79999999991",
        "+79999999990"
    ]
    
    var emails = [
        "john@swiftbook.ru",
        "jdshn@swiftbook.ru",
        "johh@swiftbook.ru",
        "joaan@swiftbook.ru",
        "jokkn@swiftbook.ru",
        "jozuun@swiftbook.ru",
        "jolln@swiftbook.ru",
        "joan@swiftbook.ru",
        "jomn@swiftbook.ru",
        "jofdn@swiftbook.ru"
    ]

    func getRandomName() -> String {
        var name = ""
        if names.count > 0 {
            name = names.removeFirst()
        }
        return name
    }
    
    func getRandomSurname() -> String {
        var surname = ""
        if surnames.count > 0 {
            surname = surnames.removeFirst()
        }
        return surname
    }
    
    
    func getRandomPhoneNumber() -> String {
        var phoneNumber = ""
        if phoneNumbers.count > 0 {
            phoneNumber = phoneNumbers.removeFirst()
        }
        return phoneNumber
    }
    
    func getRandomEmail() -> String {
        var email = ""
        if emails.count > 0 {
            email = emails.removeFirst()
        }
        return email
    }
    
    
}

