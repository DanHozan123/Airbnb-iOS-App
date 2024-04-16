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

enum SettingsItems: String {
    case settings = "Settings"
    case accessibility = "Accessibility"
    case getHelp = "Get Help"
    case thirdPartyTools = "Third-party Tools"
    
    var imageName: String {
        switch self {
            case .settings:
                return "gear"
            case .accessibility:
                return "doc.badge.gearshape.fill"
            case .getHelp:
                return "questionmark.circle"
            case .thirdPartyTools:
                return "key.viewfinder"
        }
    }
}

enum SettingsItems2: String {
    case personalInformation = "Personal Information"
    case payments = "Payments And payouts"
    case taxes = "Taxes"
    case loginAndSecuity = "Login & seurity"
    case accessibility = "Accessibility"
    case translation = "Translation"
    case notifications = "Notifications"
    case privacy = "Privacy and sharing"
    
    var imageName: String {
        switch self {
            
        case .personalInformation:
            return "person.circle"
        case .payments:
            return "creditcard.fill"
        case .taxes:
            return "doc"
        case .loginAndSecuity:
            return "shield"
        case .accessibility:
            return "doc.badge.gearshape.fill"
        case .translation:
            return "character.book.closed"
        case .notifications:
            return "bell"
        case .privacy:
            return "lock"
        }
    }
    
}

enum HostingItems: String {
    case switchToHosting = "Swith to hosting"
    case listYourSpace = "List your space"
    case guideBook = "Your guidebook"
    
    var imageName: String {
        switch self {
            
        case .switchToHosting:
            return "lightswitch.on"
        case .listYourSpace:
            return "house"
        case .guideBook:
            return "book.closed"
        }
    }
}

enum ToolsItems: String {
    case siri = "Siri settings"
    
    var imageName: String {
        switch self {
        case .siri:
            return "circle.circle"
        }
    }
}

enum SupportItems: String {
    case helpCentre = "Visit the Help Centre"
    case safetyIssue = "Get help with a safety issue"
    case report = "Report a neighbourhood concern"
    case howAirbnbWorks = "How Airbnb works"
    case feedback = "Give us feedback"
    
    var imageName: String {
        switch self {
            
        case .helpCentre:
            return "questionmark.circle"
        case .safetyIssue:
            return "lock.shield.fill"
        case .report:
            return "exclamationmark.bubble"
        case .howAirbnbWorks:
            return "gearshape.2"
        case .feedback:
            return "pencil"
        }
    }
}

enum LegalItems: String {
    case termsOfService = "Terms of Serice"
    case privacyPolicy = "Privacy Policy"
    case licences = "Open sources licences"
    
    var imageName: String {
        switch self {
        case .termsOfService:
            return "book"
        case .privacyPolicy:
            return "book"
        case .licences:
            return "book"
        }
    }
}


enum EditProfile: String {
    case university = "Where I went to school"
    case work = "My work"
    case location = "Where I live"
    case languages = "Languages I speak"
    case age = "Year I was born"
    case song = "My favorite song in secondary school"
    case love = "I'm obsessed with"
    case funFact = "My fun fact"
    case uselessSkill = "My most useless skill"
    case biographyTitle = "My biography title would be"
    case spendTime = "I spend to much  time"
    case pets = "Pets"
    
    var imageName: String {
        switch self {
        case .university:
            return "graduationcap"
        case .work:
            return "briefcase"
        case .location:
            return "globe.europe.africa"
        case .languages:
            return "character.bubble"
        case .age:
            return "balloon"
        case .song:
            return "music.note"
        case .love:
            return "heart"
        case .funFact:
            return "lightbulb"
        case .uselessSkill:
            return "pencil"
        case .biographyTitle:
            return "book"
        case .spendTime:
            return "clock"
        case .pets:
            return "pawprint"
        }
    }
}
