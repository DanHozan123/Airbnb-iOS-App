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
}

let MOCK_DATA_USER = User(id: UUID().uuidString,
                          image: "Daniel Day-Lewis",
                          email: "daniel@gmail.com",
                          firstName: "Daniel",
                          lastName: "Day-Lewis",
                          phoneNumber: "+40751704238")


