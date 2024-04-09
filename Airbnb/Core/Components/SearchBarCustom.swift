//
//  SearchBarCuston.swift
//  Airbnb
//
//  Created by Dan Hozan on 09.04.2024.
//

import SwiftUI

struct SearchBarCustom: View {
    
    @Binding var searchText: String
    @Binding var showFilterView: Bool
    
    var body: some View {
        HStack {
            HStack(alignment: .center) {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.black)
                    .padding(.horizontal, 10)
                
                TextField("Where to?", text: $searchText)
                    .padding(.vertical, 15)
                    .foregroundColor(.black)
            }
            .background(Color.gray.opacity(0.2))
            .cornerRadius(30)
            .padding(.leading, 30)
            
            Button {
                showFilterView.toggle()
            } label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .renderingMode(.template)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.black)
                    .padding(.trailing, 10)
                    .padding(.horizontal, 10)
            }
        }
    }
}

struct SearchBarCustom_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarCustom(searchText: .constant(""), showFilterView: .constant(true))
    }
}
