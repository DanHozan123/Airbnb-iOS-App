//
//  ExploreFilterView.swift
//  Airbnb
//
//  Created by Dan Hozan on 09.04.2024.
//

import SwiftUI

enum TypeOfPlace {
    case anyType
    case room
    case entireHome
    
    var title: String {
        switch self {
        case .anyType:
            return "Any Type"
        case .room:
            return "Room"
        case .entireHome:
            return "Entire Home"
        }
    }
}

struct Option: Equatable, Hashable{
    let title: String
    var checkbox = false
}

struct ExploreFilterView: View {
    
    @Binding var showFilterView: Bool
    
    @State var typeOfPlace: TypeOfPlace = .anyType
    @State var minimumPrice = ""
    @State var maximumPrice = ""
    @State var selectedBubbleBedrooms = "Any"
    @State var selectedBubbleBeds = "Any"
    @State var selectedBubbleBathrooms = "Any"
    @State var guestFavourites = false
    @State var selectedHouse = false
    @State var selectedApartment = false
    @State var selectedGuesthouse = false
    @State var selectedHotel = false
        
    @State var essentials: [Option] = {
        var options: [Option] = []
        for option in AmenityOption.allCases {
            options.append(Option(title: option.rawValue))
        }
        return options
    }()
    
    @State var features: [Option] = {
        var options: [Option] = []
        for option in FeatureOption.allCases {
            options.append(Option(title: option.rawValue))
        }
        return options
    }()
    
    @State var location = [Option(title: LocationOption.beachfront.rawValue),
                           Option(title: LocationOption.waterfront.rawValue)]
    
    @State var safety = [Option(title: SafetyOption.smokeAlarm.rawValue),
                         Option(title: SafetyOption.carbonMonoxideAlarm.rawValue)]
    
    @State var instantBook = false
    @State var selfCheckIn = false
    @State var allowsPets = false
    
    @State var guestEntrance = [Option(title: GuestEntranceOption.stepFreeAccess.rawValue),
                                Option(title: GuestEntranceOption.widerEntrance.rawValue),
                                Option(title: GuestEntranceOption.stepFreePath.rawValue),
                                Option(title: GuestEntranceOption.accessibleParking.rawValue)]
    
    @State var bedroom = [Option(title: BedroomOption.stepFreeAccess.rawValue),
                          Option(title: BedroomOption.widerEntrance.rawValue)]
    
    @State var bathroom: [Option] = {
        var options: [Option] = []
        for option in BathroomOption.allCases {
            options.append(Option(title: option.rawValue))
        }
        return options
    }()
    @State var addaptiveEquipment = [Option(title: AdaptiveEquipmentOption.ceilingOrMobileHoist.rawValue)]
    
    @State var hostLanguage: [Option] = {
        var options: [Option] = []
        for option in HostLanguageOption.allCases {
            options.append(Option(title: option.rawValue))
        }
        return options
    }()
    
    var body: some View {
        NavigationView {
            ScrollView {
                
                //property types
                VStack() {
                    
                    VStack {
                        VStack(alignment: .leading) {
                            Text("Property Type")
                                .fontWeight(.medium)
                                .padding(.bottom, 5)
                            
                            Text("Search rooms, entire homes, or any type of place")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                            
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom, 10)
                        
                        HStack(spacing: 0) {
                            Button {
                                typeOfPlace = .anyType
                                
                            } label: {
                                Text(TypeOfPlace.anyType.title)
                                    .font(.subheadline)
                                    .frame(width: 100, height: 40)
                                    .background(typeOfPlace == .anyType ? .black : .white)
                                    .foregroundColor(typeOfPlace == .anyType ? .white : .black)
                            }.overlay(
                                RoundedRectangle(cornerRadius: 0)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                            
                            Button {
                                typeOfPlace = .room
                            } label: {
                                Text(TypeOfPlace.room.title)
                                    .font(.subheadline)
                                    .frame(width: 100, height: 40)
                                    .background(typeOfPlace == .room ? .black : .white)
                                    .foregroundColor(typeOfPlace == .room ? .white : .black)
                            }.overlay(
                                RoundedRectangle(cornerRadius: 0)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                            
                            Button {
                                typeOfPlace = .entireHome
                            } label: {
                                Text(TypeOfPlace.entireHome.title)
                                    .font(.subheadline)
                                    .frame(width: 100, height: 40)
                                    .background(typeOfPlace == .entireHome ? .black : .white)
                                    .foregroundColor(typeOfPlace == .entireHome ? .white : .black)
                            }.overlay(
                                RoundedRectangle(cornerRadius: 0)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                        }
                        .tint(.black)
                    }
                    .padding(.vertical)
                    
                    Divider()
                        .background(.gray)
                    
                    VStack(alignment: .leading) {
                        Text("Price range")
                            .fontWeight(.medium)
                            .padding(.bottom, 5)
                        
                        Text("Nighly prices including fees and taxes")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        
                        HStack() {
                            Spacer()
                            TextField("Minimum", text: $minimumPrice)
                                .padding(10)
                                .frame(width: 120)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.gray, lineWidth: 1)
                                }
                            Spacer()
                            Rectangle()
                                .frame(width: 50, height: 1)
                                .foregroundColor(Color.gray)
                            
                            Spacer()
                            TextField("Maximum", text: $maximumPrice)
                                .padding(10)
                                .frame(width: 120)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.gray, lineWidth: 1)
                                }
                            Spacer()
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical)
                    
                    Divider()
                        .background(.gray)
                    
                    VStack {
                        Text("Bedrooms")
                            .fontWeight(.medium)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        BubbleArrayList(selectedBubble: $selectedBubbleBedrooms)
                        
                        Text("Beds")
                            .fontWeight(.medium)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        BubbleArrayList(selectedBubble: $selectedBubbleBeds)
                        
                        Text("Bathrooms")
                            .fontWeight(.medium)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        BubbleArrayList(selectedBubble: $selectedBubbleBathrooms)
                    }
                    .padding(.vertical)
                    
                    Divider()
                        .background(.gray)
                    
                    VStack {
                        Text("Top-tier stays")
                            .fontWeight(.medium)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Button {
                            guestFavourites.toggle()
                        } label: {
                            VStack(alignment: .leading) {
                                Image(systemName: "star")
                                    .renderingMode(.template)
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .padding(.top, 8)
                                    .padding(.leading, 8)
                                
                                Spacer()
                                
                                Text("Guest favourites")
                                    .fontWeight(.medium)
                                    .padding(.leading, 5)
                                    .padding(.bottom, 3)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                
                                Text("The most loved homes on Airbnb, according to guests")
                                    .font(.subheadline)
                                       .foregroundColor(.gray)
                                       .padding(.leading, 5)
                                       .padding(.bottom, 5)
                                       .multilineTextAlignment(.leading)
                                       .frame(maxWidth: .infinity, alignment: .leading)
                                    
                                
                            }
                            .frame(height: 130)
                            .overlay {
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(guestFavourites ? Color.black : Color.gray, lineWidth: 1)
                            }
                            .tint(.black)
                            .background(guestFavourites ? Color.gray.opacity(0.1) : .white)
                            .cornerRadius(10)
                        }
                    }.padding(.vertical)
                    
                    Divider()
                        .background(.gray)
                    
                    VStack {
                        Text("Property type")
                            .fontWeight(.medium)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        HStack {
                            PropertyTypeLabel(image: "house", name: "House", selected: $selectedHouse)
                            PropertyTypeLabel(image: "building.2", name: "Apartment", selected: $selectedApartment)
                        }
                        HStack {
                            PropertyTypeLabel(image: "house.lodge", name: "Guesthouse", selected: $selectedGuesthouse)
                            PropertyTypeLabel(image: "building.columns", name: "Hotel", selected: $selectedHotel)
                        }
                        
                    }
                    .padding(.vertical)
                    
                    Divider()
                        .background(.gray)
                    
                }
                
                //property options
                VStack() {
                    
                    VStack{
                        OptionsList(title: "Essentials", options: $essentials)
                            .padding(.bottom, 15)
                        OptionsList(title: "Features", options: $features)
                            .padding(.bottom, 15)
                        
                        Text("Location")
                            .fontWeight(.medium)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        ForEach(location, id: \.self) { option in
                            CheckboxShape(option: $location[location.firstIndex(of: option)!])
                        }
                        .padding(.bottom, 15)
                        
                        
                        Text("Safety")
                            .fontWeight(.medium)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        ForEach(safety, id: \.self) { option in
                            CheckboxShape(option: $safety[safety.firstIndex(of: option)!])
                        }
                    }
                    .padding(.vertical)
                    
                    Divider()
                        .background(.gray)
                    
                    VStack() {
                        Text("Booking options")
                            .fontWeight(.medium)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        BookingOption(bookingOptionIsOn: $instantBook, title: "Instant Book", subheadline: "Book without waiting for the host to to respond")
                            .padding(.bottom, 15)
                        
                        BookingOption(bookingOptionIsOn: $selfCheckIn, title: "Self check-in", subheadline: "Easy access to the property once you arrive")
                            .padding(.bottom, 15)
                        
                        BookingOption(bookingOptionIsOn: $allowsPets, title: "Allows pets", subheadline: "Bringing a service animal")
                    }
                    .padding(.vertical)
                    
                    Divider()
                        .background(.gray)
                    
                    VStack() {
                        Text("Accessibility features")
                            .fontWeight(.medium)
                            .padding(.bottom, 3)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("This info was provided by the Host and reviewed by Airbnb.")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding(.vertical)
                    
                    VStack {
                        OptionsList(title: "Guest entrance and parking", options: $guestEntrance)
                            .padding(.bottom, 15)
                        
                        Text("Bedroom")
                            .fontWeight(.medium)
                            .padding(.bottom, 3)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        ForEach(bedroom, id: \.self) { option in
                            CheckboxShape(option: $bedroom[bedroom.firstIndex(of: option)!])
                        }
                        .padding(.bottom, 15)
                        
                        
                        OptionsList(title: "Bathroom", options: $bathroom)
                            .padding(.bottom, 15)
                        
                        Text("Adaptive equipment")
                            .fontWeight(.medium)
                            .padding(.bottom, 3)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        ForEach(addaptiveEquipment, id: \.self) { option in
                            CheckboxShape(option: $addaptiveEquipment[addaptiveEquipment.firstIndex(of: option)!])
                        }
                        .padding(.bottom, 15)

                    }
                    
                    Divider()
                        .background(.gray)
                    
                    OptionsList(title: "Host Language", options: $hostLanguage)
                        .padding(.bottom, 15)
                }
                
                
                
            }
            .padding(.horizontal)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        showFilterView.toggle()
                    } label: {
                        Image(systemName: "x.circle.fill")
                            .foregroundColor(.black)
                    }
                }
            }
            .navigationTitle("Filters")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}



struct ExploreFilterView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreFilterView(showFilterView: .constant(true))
    }
}
