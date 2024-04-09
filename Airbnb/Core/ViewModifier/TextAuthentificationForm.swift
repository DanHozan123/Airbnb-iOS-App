//
//  TextAuthnetification.swift
//  Airbnb
//
//  Created by Dan Hozan on 05.04.2024.
//


import SwiftUI

struct TextAuthentificationForm: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.footnote)
            .foregroundColor(.gray)
            .padding(.leading, 1)
    }
}
