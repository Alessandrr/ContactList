//
//  Person.swift
//  ContactList
//
//  Created by Aleksandr Mamlygo on 02.06.23.
//

import Foundation

struct Person {
    
    let firstName: String
    let lastName: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    static func getPeople() -> [Person] {
        let data = DataStore.shared
        
        let randomNames = data.firstNames.shuffled()
        let randomLastNames = data.lastNames.shuffled()
        let randomEmails = data.eMails.shuffled()
        let randomPhones = data.phoneNumbers.shuffled()
        
        let peopleCount = min(randomNames.count, randomLastNames.count, randomEmails.count, randomPhones.count)
        var people: [Person] = []
        
        for index in 0..<peopleCount {
            people.append(Person(
                firstName: randomNames[index],
                lastName: randomLastNames[index],
                email: randomEmails[index],
                phoneNumber: randomPhones[index]
            ))
        }
        
        return people
    }
}
