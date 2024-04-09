//
//  ExploreView.swift
//  Airbnb
//
//  Created by Dan Hozan on 05.04.2024.
//

import SwiftUI

struct ExploreView: View {
    
    @State var searchText = ""
    @State var showFilterView = false
    
    var body: some View {
        VStack {
            SearchBarCustom(searchText: $searchText, showFilterView: $showFilterView)
            Spacer()
            
        }
        .sheet(isPresented: $showFilterView) {
            ExploreFilterView(showFilterView: $showFilterView)
        }
        
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
