//
//  User.swift
//  Airbnb
//
//  Created by Dan Hozan on 12.04.2024.
//

import Foundation

struct User {
    let id: String
    let image: String
    let email: String
    let firstName: String
    let lastName: String
    let phoneNumber: String?
    let university: String?
    let work: String?
    let location: String?
    let languages: String?
    let age: String?
    let song: String?
    let love: String?
    let funFact: String?
    let uselessSkill: String?
    let biographyTitle: String?
    let spendTime: String?
    let pets: String?
    let description: String?
}

let MOCK_DATA_USER = User(id: UUID().uuidString,
                          image: "Daniel Day-Lewis",
                          email: "daniel@gmail.com",
                          firstName: "Daniel",
                          lastName: "Day-Lewis",
                          phoneNumber: "+40751704238",
                          university: "Bristol Old Vic Theatre School",
                          work: "actor",
                          location: "UK",
                          languages: "english",
                          age: nil,
                          song: nil,
                          love: nil,
                          funFact: nil,
                          uselessSkill: nil,
                          biographyTitle: nil,
                          spendTime: nil,
                          pets: nil,
                          description: "I have a competition in me.")
