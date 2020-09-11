//
//  Person.swift
//  TableVIewHomework
//
//  Created by Andrey Markov on 2020-09-10.
//  Copyright © 2020 Andrey Markov. All rights reserved.
//

struct Person{
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String{
        "\(name) \(surname)"
    }
}
extension Person {
    static func getPersons() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        
        for index in 0..<names.count {
            let person = Person(
                name: names[index], surname: surnames[index], phone: phones[index], email: emails[index]
            )
            persons.append(person)
        }
        return persons
    }
}

enum Contacts: String{
    case phone = "phone"
    case email = "tray"
}


