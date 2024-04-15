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
    let mail: String
    let fullname: String
}

let MOCK_DATA_USER = User(id: UUID().uuidString,
                          image: "Daniel Day-Lewis",
                          mail: "daniel@gmail.com",
                          fullname: "Daniel Day-Lewis")


