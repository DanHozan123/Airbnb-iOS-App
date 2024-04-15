//
//  AirbnbYourPlace.swift
//  Airbnb
//
//  Created by Dan Hozan on 13.04.2024.
//

import SwiftUI

struct AirbnbYourPlace: View {
    var body: some View {
        
        VStack {
            HStack {
                VStack(alignment: .leading){
                    Text("Airbnb your place")
                        .font(.system(size: 17))
                        .fontWeight(.medium)
                    
                    Text("It's simple to get set up and start earning")
                        .font(.footnote)
                        .foregroundColor(GRAY_CUSTOM3)
                        .multilineTextAlignment(.leading)
                        .padding(.top, 5)
                }
                .padding(10)
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Image(systemName: "house.fill")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.pink)
                    .frame(width: 80, height: 80)
                    .padding(.trailing, 20)
            }
            
            
        }
        .frame(height: 120)
        .background(
            RoundedRectangle(cornerRadius: 15)
                .fill(.white)
                .shadow(radius: 10, x: 0, y: 4)
        )
        
        
    }
}

struct AirbnbYourPlace_Previews: PreviewProvider {
    static var previews: some View {
        AirbnbYourPlace()
    }
}
