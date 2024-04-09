//
//  TextFieldCustom.swift
//  Airbnb
//
//  Created by Dan Hozan on 05.04.2024.
//

import SwiftUI

struct TextFieldCustom: View {
    
    let input: String
    
    @Binding var value: String
    
    var body: some View {
        
        TextField(input, text: $value)
            .font(.system(size: 14))
            .padding(10)
            .overlay(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.gray, lineWidth: 1)
            )
        
    }
}

struct TextFieldCustom_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldCustom(input: "Email", value: .constant(""))
    }
}
