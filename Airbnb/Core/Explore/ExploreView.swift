//
//  ExploreView.swift
//  Airbnb
//
//  Created by Dan Hozan on 05.04.2024.
//

import SwiftUI

struct ExploreView: View {
    
    var posts = MOCK_DATA_POST
    var user =  MOCK_DATA_USER
    
    @State var searchText = ""
    @State var showFilterView = false
    
    @State var optionPropertyMenu: [OptionPropertyMenu] = {
        var options: [OptionPropertyMenu] = []
        for category in PropertyTypesCategory.allCases {
            if category.rawValue == "Trending" {
                options.append(OptionPropertyMenu(propertyTypesCategory: category, isTapped: true))
                continue
            }
            options.append(OptionPropertyMenu(propertyTypesCategory: category))
        }
        return options
    }()
    
    
    var body: some View {
        
        NavigationStack {
            VStack {
                
                SearchBarCustom(searchText: $searchText, showFilterView: $showFilterView)
                PropertyTypesMenu(optionPropertyMenu: $optionPropertyMenu)
                    .padding(.top)
                    .padding(.leading)
                    .padding(.trailing)
                
                ScrollView {
                    ForEach(posts, id:\.self) { post in
                        
                        NavigationLink {
                            PostDetailsView(post: post, user: user)
                        } label: {
                            PostView(post: post, user: user)
                        }
                        .tint(.black)
                    }
                }
                Spacer()
                
            }
            .sheet(isPresented: $showFilterView) {
                ExploreFilterView(showFilterView: $showFilterView)
            }
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
