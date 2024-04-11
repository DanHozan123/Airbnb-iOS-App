//
//  PropertyTypeLabel.swift
//  Airbnb
//
//  Created by Dan Hozan on 10.04.2024.
//

import SwiftUI

struct PropertyTypeLabel: View {
    
    let image: String
    let name: String
    @Binding var selected: Bool
    
    
    var body: some View {
        VStack() {
            HStack {
                Button {
                    selected.toggle()
                } label: {
                    
                    VStack(alignment: .leading) {
                        Image(systemName: image)
                            .resizable()
                            .frame(width: 25, height: 25)
                            .padding(10)
                        
                        Spacer()
                        
                        Text(name)
                            .font(.footnote)
                            .fontWeight(.medium)
                            .padding(10)
                        
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .frame(height: 90)
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(selected ? .black : Color.gray, lineWidth: 1)
                    }
                    .background(selected ? Color.gray.opacity(0.1) : .white)
                    .tint(.black)
                }
            }
        }
    }
}

struct PropertyTypeLabel_Previews: PreviewProvider {
    static var previews: some View {
        PropertyTypeLabel(image: "house", name: "House", selected: .constant(false))
    }
}
