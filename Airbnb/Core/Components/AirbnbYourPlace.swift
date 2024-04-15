//
//  AirbnbYourPlace.swift
//  Airbnb
//
//  Created by Dan Hozan on 13.04.2024.
//

import SwiftUI

struct AirbnbYourPlace: View {
    var body: some View {
        
        Button {
            print("button")
        } label: {
            VStack {
                HStack {
                    VStack{
                        Text("Airbnb your place")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(size: 17))
                            .fontWeight(.medium)
                        
                        Text("It's simple to get set up and start earning")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.footnote)
                            .foregroundColor(GRAY_CUSTOM3)
                            .multilineTextAlignment(.leading)
                            .padding(.top, 5)
                    }
                    .padding(10)
        
                    Image(systemName: "house.fill")
                        .renderingMode(.template)
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
                    .fill(Color.white)
                    .shadow(radius: 7, x: 0, y: 2)
            )
        }
        .tint(.black)
    }
}

struct AirbnbYourPlace_Previews: PreviewProvider {
    static var previews: some View {
        AirbnbYourPlace()
    }
}
