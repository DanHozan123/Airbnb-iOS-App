//
//  OptionsList.swift
//  Airbnb
//
//  Created by Dan Hozan on 10.04.2024.
//

import SwiftUI

struct OptionsList: View {
    
    let title: String
    
    @Binding var options: [Option]
    
    @State var isExpanded = false
    @State var isChecked = false
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text(title)
                .fontWeight(.medium)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            ForEach(options.prefix(isExpanded ? options.count : 3), id: \.self) { option in
                CheckboxShape(option: $options[options.firstIndex(of: option)!])
            }
            
            Button {
                isExpanded.toggle()
            } label: {
                Text(isExpanded ? "Show Less" : "Show More")
                    .font(.subheadline)
            }
            .foregroundColor(.blue)
        }
    }
}

struct OptionsList_Previews: PreviewProvider {
    static var previews: some View {
        OptionsList(title: "Essentials", options: .constant([Option(title: "Wifi"), Option(title: "Kitchen")]))
    }
}
