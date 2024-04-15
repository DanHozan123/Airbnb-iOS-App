//
//  ButtonCustom.swift
//  Airbnb
//
//  Created by Dan Hozan on 05.04.2024.
//

import SwiftUI

struct ButtonLabelWithRectangle: View {
    
    let input: String
    let image: String
    
    var body: some View {
        ZStack(alignment: .center) {
            HStack {
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 20, height: 20)
                    .font(.system(size: 14))
                    .padding(10)
                Spacer()
            }
            .tint(.black)
            .frame(maxWidth: .infinity)
            .overlay(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.gray, lineWidth: 1)
            )

            Text(input)
                .font(.system(size: 14))
                .fontWeight(.medium)
                .padding(10)
                .foregroundColor(.black)
        }
    }
}

struct ButtonLabelWithRectangle_Previews: PreviewProvider {
    static var previews: some View {
        ButtonLabelWithRectangle(input: "Continue with email", image: "email")
    }
}
