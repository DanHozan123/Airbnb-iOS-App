//
//  PropertyTypeLabel.swift
//  Airbnb
//
//  Created by Dan Hozan on 10.04.2024.
//

import SwiftUI

struct PropertyTypeLabel: View {
    
    var firstImage: String
    var secondImage: String
    @Binding var selectedFirst: Bool
    @Binding var selectedSecond: Bool
    
    var body: some View {
        VStack() {
            HStack {
                
                VStack(alignment: .leading) {
                    Image(systemName: firstImage)
                        .resizable()
                        .frame(width: 25, height: 25)
                        .padding(10)
                        
                    Spacer()
                    
                    Text("House")
                        .font(.footnote)
                        .fontWeight(.medium)
                        .padding(10)
                       
                        
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(height: 90)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray, lineWidth: 1)
                }
                
                
                VStack(alignment: .leading) {
                    Image(systemName: secondImage)
                        .resizable()
                        .frame(width: 25, height: 25)
                        .padding(10)
                    
                    Spacer()
                    
                    Text("Apartment")
                        .font(.footnote)
                        .fontWeight(.medium)
                        .padding(10)
                       
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(height: 90)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray, lineWidth: 1)
                }
                
             
            }
           
         
        }
  
        
    }
}

struct PropertyTypeLabel_Previews: PreviewProvider {
    static var previews: some View {
        PropertyTypeLabel(firstImage: "house", secondImage: "building.2", selectedFirst: .constant(false), selectedSecond: .constant(false))
    }
}
