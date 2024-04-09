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

struct ExploreFilterView: View {
    
    @Binding var showFilterView: Bool
    
    @State var typeOfPlace: TypeOfPlace = .anyType
    @State var minimumPrice = ""
    @State var maximumPrice = ""
    @State var selectedBubbleBedrooms = "Any"
    @State var selectedBubbleBeds = "Any"
    @State var selectedBubbleBathrooms = "Any"

    
    var body: some View {
        NavigationView {
            
            VStack() {
                
                
                VStack(alignment: .leading) {
                    Text("Property Type")
                        .fontWeight(.medium)
                        .padding(.bottom, 5)
                    
                    
                    Text("Search rooms, entire homes, or any type of place")
                        .font(.footnote)
                        .foregroundColor(.gray)
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack {
                    Button {
                        typeOfPlace = .anyType
                        
                    } label: {
                        Text(TypeOfPlace.anyType.title)
                            .font(.subheadline)
                            .frame(width: 90, height: 40)
                            .background(typeOfPlace == .anyType ? .black : .white)
                            .foregroundColor(typeOfPlace == .anyType ? .white : .black)
                    }
                    
                    Button {
                        typeOfPlace = .room
                    } label: {
                        Text(TypeOfPlace.room.title)
                            .font(.subheadline)
                            .frame(width: 90, height: 40)
                            .background(typeOfPlace == .room ? .black : .white)
                            .foregroundColor(typeOfPlace == .room ? .white : .black)
                    }
                    
                    Button {
                        typeOfPlace = .entireHome
                    } label: {
                        Text(TypeOfPlace.entireHome.title)
                            .font(.subheadline)
                            .frame(width: 90, height: 40)
                            .background(typeOfPlace == .entireHome ? .black : .white)
                            .foregroundColor(typeOfPlace == .entireHome ? .white : .black)
                    }
                    
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 0)
                        .stroke(Color.gray, lineWidth: 1)
                )
                .tint(.black)
                .padding(.vertical)
                
                VStack(alignment: .leading) {
                    Text("Price range")
                        .fontWeight(.medium)
                        .padding(.bottom, 5)
                    
                    
                    Text("Nighly prices including fees and taxes")
                        .font(.footnote)
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
             
                
                
                Spacer()
                
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
