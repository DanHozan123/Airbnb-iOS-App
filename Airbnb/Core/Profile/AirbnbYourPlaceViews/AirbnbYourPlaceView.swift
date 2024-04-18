//
//  AirbnbYourPlaceView.swift
//  Airbnb
//
//  Created by Dan Hozan on 15.04.2024.
//

import SwiftUI

struct AirbnbYourPlaceView: View {
    
    @Environment (\.presentationMode) var presentationMode
    
    @State private var numberOfNights = 7.0
    let pricePerNight = 56.0
    
    var totalPrice: Double {
        return numberOfNights * pricePerNight
    }
    
    let euroFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencyCode = "EUR"
        return formatter
    }()
    
    var body: some View {
        ScrollView {
            
            ZStack(alignment: .bottom) {
                
                VStack(alignment: .leading) {
                   
                    // title
                    VStack(alignment: .center) {
                        Text("Airbnb it.")
                            .font(.system(size: 35))
                            .fontWeight(.medium)
                            .foregroundColor(.pink)
                        
                        Text("You could earn")
                            .font(.system(size: 35))
                            .fontWeight(.medium)
                        
                        Text("\(euroFormatter.string(from: totalPrice as NSNumber) ?? "0")")
                            .font(.system(size: 40))
                            .fontWeight(.semibold)
                            .padding(.vertical)
                            .padding(.bottom)
                        
                        Text("\(Int(numberOfNights)) nights")
                            .underline()
                        + Text(" at an estimated \(euroFormatter.string(from: pricePerNight as NSNumber)!) a night ")
                            .foregroundColor(GRAY_CUSTOM3)
                            
                        
                        Slider(value: $numberOfNights, in: 1...30)
                            .padding()
                            .tint(.black)
                        
                        Text("Learn how we estimate your earnings")
                            .font(.footnote)
                            .underline()
                            .foregroundColor(.gray)
                                   
                    }
                   
                    // map
                    VStack(alignment: .leading) {
                        
                    }
                    
                }
                
                
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        BackButtonLabel()
                    }
                    
                }
            }
        }
    }
    
}

struct AirbnbYourPlaceView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            AirbnbYourPlaceView()
        }
    }
}
