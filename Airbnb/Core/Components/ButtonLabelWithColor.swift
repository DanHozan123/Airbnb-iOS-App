//
//  ButtonLabel.swift
//  Airbnb
//
//  Created by Dan Hozan on 13.04.2024.
//

import SwiftUI

struct ButtonLabelWithColor: View {
    
    var text: String
    var color: Color
    
    var body: some View {
        
        Text(text)
            .frame(maxWidth: .infinity)
            .font(.system(size: 14))
            .foregroundColor(.white)
            .padding(10)
            .background(color)
            .cornerRadius(5)
        
    }
}

struct ButtonLabelWithColor_Previews: PreviewProvider {
    static var previews: some View {
        ButtonLabelWithColor(text: "Enter", color: Color.pink)
    }
}
