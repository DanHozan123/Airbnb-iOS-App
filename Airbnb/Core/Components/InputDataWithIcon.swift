//
//  InputDataWithIcon.swift
//  Airbnb
//
//  Created by Dan Hozan on 16.04.2024.
//

import SwiftUI

struct InputDataWithIcon: View {
    
    var image: String
    var text: String
    var data: String?
    
    var body: some View {
        
        VStack {
            HStack() {
                Image(systemName: image)
                    .resizable()
                    .frame(width: 20, height: 20)
                
                if let data = data {
                    Text("\(text): \(data)")
                        .foregroundColor(GRAY_CUSTOM3)
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                } else {
                    Text(text)
                        .foregroundColor(GRAY_CUSTOM3)
                        .multilineTextAlignment(.leading)
                        .font(.subheadline)
                }
                
                Spacer()
            }
            Divider()
                .background(.gray)
                .padding(.vertical, 7)
        }
        
    }
}

struct InputDataWithIcon_Previews: PreviewProvider {
    static var previews: some View {
        InputDataWithIcon(image: "graduationcap", text: "Where I went to school", data: "Bristol Old Vic Theatre School")
    }
}
