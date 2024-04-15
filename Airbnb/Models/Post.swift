//
//  Post.swift
//  Airbnb
//
//  Created by Dan Hozan on 12.04.2024.
//

import Foundation

struct Post: Hashable {
    let id: String
    let images: [String]
    let ownerId: String
    let price: Float
    let name: String
    let country: String
    let location: String
    let address: String
    let dataStart: Date
    let dataEnd: Date
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM d"
        return formatter
    }()
    
    var differenceInDays: Int {
        let difference = Calendar.current.dateComponents([.day], from: dataStart, to: dataEnd).day
        return difference ?? 0
    }
    
    var total: Float {
        return Float(differenceInDays) * Float(price)
    }
    
    let euroFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencyCode = "EUR"
        return formatter
    }()
    
}

let MOCK_DATA_POST = [Post(id: UUID().uuidString,
                           images: ["home1.0", "home1.1", "home1.2", "home1.3", "home1.4", "home1.5", "home1.6", "home1.7"],
                           ownerId: UUID().uuidString,
                           price: 70,
                           name: "Cabana din busteni Transilvania, check-in independent, numai pentru adulti",
                           country: "Romania",
                           location: "Pesteana",
                           address: "",
                           dataStart: Date(),
                           dataEnd: Calendar.current.date(byAdding: .day, value: 10, to: Date()) ?? Date()),
                      
                      Post(id: UUID().uuidString,
                           images: ["home2.0", "home2.1", "home2.2", "home2.3", "home2.4", "home2.5", "home2.6"],
                           ownerId: UUID().uuidString,
                           price: 1700,
                           name: "Stock Estate Moieciu",
                           country: "Romania",
                           location: "Drumul Carului",
                           address: "",
                           dataStart: Date(),
                           dataEnd: Calendar.current.date(byAdding: .day, value: 10, to: Date()) ?? Date()),
                      
                      Post(id: UUID().uuidString,
                           images: ["home3.0", "home3.1", "home3.2", "home3.3", "home3.4", "home3.5"],
                           ownerId: UUID().uuidString,
                           price: 170,
                           name: "Casa în copac din Transilvania langa Sibiu (biciclete gratuite)",
                           country: "Romania",
                           location: "Porumbacu",
                           address: "",
                           dataStart: Date(),
                           dataEnd: Calendar.current.date(byAdding: .day, value: 10, to: Date()) ?? Date())]
