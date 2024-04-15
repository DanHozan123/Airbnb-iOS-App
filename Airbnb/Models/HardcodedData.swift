//
//  HardcodedData.swift
//  Airbnb
//
//  Created by Dan Hozan on 11.04.2024.
//

import Foundation


enum AmenityOption: String, CaseIterable {
    case wifi = "Wifi"
    case kitchen = "Kitchen"
    case washingMachine = "Washing machine"
    case dryer = "Dryer"
    case airConditioning = "Air conditioning"
    case heating = "Heating"
    case dedicatedWorkspace = "Dedicated workspace"
    case tv = "TV"
    case hairDryer = "Hair dryer"
    case iron = "Iron"
}

enum FeatureOption: String, CaseIterable {
    case pool = "Pool"
    case hotTub = "Hot tub"
    case freeParking = "Free parking"
    case evCharger = "EV Charger"
    case cot = "Cot"
    case kingBed = "King bed"
    case gym = "Gym"
    case bbqGrill = "BBQ grill"
    case breakfast = "Breakfast"
    case indoorFireplace = "Indoor fireplace"
    case smokingAllowed = "Smoking allowed"
}

enum LocationOption: String, CaseIterable {
    case beachfront = "Beachfront"
    case waterfront = "Waterfront"
}

enum SafetyOption: String, CaseIterable {
    case smokeAlarm = "Smoke alarm"
    case carbonMonoxideAlarm = "Carbon monoxide alarm"
}

enum GuestEntranceOption: String, CaseIterable {
    case stepFreeAccess = "Step-free guest access"
    case widerEntrance = "Guest entrance wider than 81 centimetres (32 inches)"
    case stepFreePath = "Step-free path to the guest entrance"
    case accessibleParking = "Accessible parking spot"
}

enum BedroomOption: String, CaseIterable {
    case stepFreeAccess = "Step-free bedroom access"
    case widerEntrance = "Bedroom entrance wider than 81 centimetres (32 inches)"
}

enum BathroomOption: String, CaseIterable {
    case stepFreeAccess = "Step-free bathroom access"
    case widerEntrance = "Bathroom entrance wider than 81 centimetres (32 inches)"
    case showerGrabBar = "Shower grab bar"
    case toiletGrabBar = "Toilet grab bar"
    case stepFreeShower = "Step-free shower"
    case showerOrBathChair = "Shower or bath chair"
}

enum AdaptiveEquipmentOption: String, CaseIterable {
    case ceilingOrMobileHoist = "Ceiling or mobile hoist"
}

enum HostLanguageOption: String, CaseIterable {
    case english = "English"
    case french = "French"
    case german = "German"
    case japanese = "Japanese"
    case italian = "Italian"
    case russian = "Russian"
    case spanish = "Spanish"
    case chinese = "Chinese"
    case arabic = "Arabic"
    case hindi = "Hindi"
    case portuguese = "Portuguese"
    case turkish = "Turkish"
    case dutch = "Dutch"
    case bengali = "Bengali"
    case greek = "Greek"
    case hebrew = "Hebrew"
    case polish = "Polish"
    case danish = "Danish"
    case swedish = "Swedish"
    case norwegian = "Norwegian"
    case finnish = "Finnish"
    case czech = "Czech"
    case hungarian = "Hungarian"
    case ukrainian = "Ukrainian"
    case romanian = "Romanian"
}

enum PropertyTypesCategory: String, CaseIterable {
    case trending = "Trending"
    case treeHouses = "Tree Houses"
    case design = "Design"
    case cabins = "Cabins"
    case artic = "Arctic"
    case camping = "Camping"
    case amazingPools = "Amazing Pools"
    case lakeFront = "Lake Front"
    case surfing = "Surfing"
    case tinyHomes = "Tiny Homes"
    case skiing = "Skiing"
    case amazingViews = "Amazing View"
    case tropical = "Tropical"
    case new = "New"
    case farms = "Farms"
    case bedAndBreakfasts = "Bed & Breakfasts"
    case vineyards = "Vineyards"
    case beach = "Beach"
    case topOfTheWorld = "Top Of The World"
    case golfing = "Golfing"
    case play = "Play"
    case windmills = "Windmills"
    case containers = "Containers"
    case grandPianos = "Grand Pianos"
    case towers = "Towers"
    case deserts = "Deserts"
    case boats = "Boats"
    case creativeSpaces = "Creative Spaces"
    
    var image: String {
        switch self {
        case .trending:
            return "chart.line.uptrend.xyaxis"
        case .treeHouses:
            return "tree"
        case .design:
            return "triangle.circle"
        case .cabins:
            return "house.lodge"
        case .artic:
            return "snowflake"
        case .camping:
            return "tent"
        case .amazingPools:
            return "figure.pool.swim"
        case .lakeFront:
            return "water.waves"
        case .surfing:
            return "figure.surfing"
        case .tinyHomes:
            return "house.and.flag.fill"
        case .skiing:
            return "figure.skiing.downhill"
        case .amazingViews:
            return "camera.viewfinder"
        case .tropical:
            return "tropicalstorm"
        case .new:
            return "key"
        case .farms:
            return "pawprint"
        case .bedAndBreakfasts:
            return "fork.knife"
        case .vineyards:
            return "wineglass"
        case .beach:
            return "beach.umbrella"
        case .topOfTheWorld:
            return "mountain.2"
        case .golfing:
            return "figure.golf"
        case .play:
            return "figure.play"
        case .windmills:
            return "wind"
        case .containers:
            return "square"
        case .grandPianos:
            return "pianokeys.inverse"
        case .towers:
            return "airport.extreme.tower"
        case .deserts:
            return "thermometer.sun.circle.fill"
        case .boats:
            return "sailboat.fill"
        case .creativeSpaces:
            return "paintpalette"
        }
    }
}
