//
//  SettingsItemLabel.swift
//  Airbnb
//
//  Created by Dan Hozan on 13.04.2024.
//

import SwiftUI

struct SettingsItemLabel: View {
    
    var image: String
    var text: String
    
    var body: some View {
        
        VStack {
            HStack {
                Image(systemName: image)
                    .resizable()
                    .frame(width: 20, height: 20)
                Text(text)
                Spacer()
                Image(systemName: "chevron.right")
            }
            Divider()
                .background(.gray)
        }
        
    }
}

struct SettingsItemLabel_Previews: PreviewProvider {
    static var previews: some View {
        SettingsItemLabel(image: "gear", text: "Settings")
    }
}
