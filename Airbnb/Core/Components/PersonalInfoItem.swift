//
//  PersonalInfoItem.swift
//  Airbnb
//
//  Created by Dan Hozan on 15.04.2024.
//

import SwiftUI

struct PersonalInfoItem: View {
    
    var title: String
    var text: String
    
    var body: some View {
        VStack {
            
            HStack {
                VStack(alignment: .leading) {
                    Text(title)
                        .font(.system(size: 16))
                        .padding(.bottom, 1)
                    Text(text)
                        .foregroundColor(.gray)
                        .font(.system(size: 14))
                }
                
                Spacer()
                
                Button {
                } label: {
                    Text("Edit")
                        .font(.system(size: 16))
                        .underline()
                }
                .tint(.black)

            }
            
            Divider()
                .background(.gray)
                .padding(.vertical)
        }
    }
}

struct PersonalInfoItem_Previews: PreviewProvider {
    static var previews: some View {
        PersonalInfoItem(title: "Email", text: "daniel@gmail.com")
    }
}
