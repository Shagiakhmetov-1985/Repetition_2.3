//
//  User.swift
//  Repetition_2.3
//
//  Created by Marat Shagiakhmetov on 12.09.2022.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(login: "Marat", password: "Password", person: Person.getPerson())
    }
}

struct Person {
    let name: String
    let surname: String
    let image: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(name: "Marat", surname: "Shagiakhmetov", image: "russia")
    }
}
