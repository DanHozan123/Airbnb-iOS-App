//
//  PropertyTypesMenu.swift
//  Airbnb
//
//  Created by Dan Hozan on 11.04.2024.
//

import SwiftUI


struct OptionPropertyMenu: Equatable, Hashable{
    let propertyTypesCategory: PropertyTypesCategory
    var isTapped = false
}


struct PropertyTypesMenu: View {
    
    @Binding var optionPropertyMenu: [OptionPropertyMenu]
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(optionPropertyMenu, id:\.self) { menu in
                    let index = optionPropertyMenu.firstIndex(of: menu)!
                    Button {
                        optionPropertyMenu[index].isTapped.toggle()
                    } label: {
                        VStack {
                            Image(systemName: menu.propertyTypesCategory.image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                                .foregroundColor(optionPropertyMenu[index].isTapped ? Color.black : Color.gray)
                            Text(menu.propertyTypesCategory.rawValue)
                                .font(.footnote)
                                .foregroundColor(optionPropertyMenu[index].isTapped ? Color.black : Color.gray)
                        }
                        .padding(.bottom, 8)
                    }

                    
                 
                }
            }
        }
    }
}

struct PropertyTypesMenu_Previews: PreviewProvider {
    static var previews: some View {
        PropertyTypesMenu(optionPropertyMenu: .constant([OptionPropertyMenu(propertyTypesCategory: .trending),
                                               OptionPropertyMenu(propertyTypesCategory: .treeHouses),
                                               OptionPropertyMenu(propertyTypesCategory: .design)]))
    }
}
