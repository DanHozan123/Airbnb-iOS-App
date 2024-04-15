//
//  LoveButton.swift
//  Airbnb
//
//  Created by Dan Hozan on 12.04.2024.
//

import SwiftUI

struct LoveButton: View {
    
    @Binding var isClicked: Bool
    
    var body: some View {
        
        Button {
            isClicked.toggle()
        } label: {
            Image(systemName: "heart.fill")
                .renderingMode(.template)
                .resizable()
                .scaledToFit()
                .foregroundColor(isClicked ? .red : .white.opacity(0.7))
                .frame(width: 25, height: 25)
                .shadow(color: .black, radius: 3, x: 0, y: 2)
        }
        .tint(.black)
    }
}

struct LoveButton_Previews: PreviewProvider {
    static var previews: some View {
        LoveButton(isClicked: .constant(true))
    }
}
