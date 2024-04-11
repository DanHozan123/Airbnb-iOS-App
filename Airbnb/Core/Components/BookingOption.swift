//
//  BookingOption.swift
//  Airbnb
//
//  Created by Dan Hozan on 10.04.2024.
//

import SwiftUI

struct BookingOption: View {
    
    @Binding var bookingOptionIsOn: Bool
    
    let title: String
    let subheadline: String
    
    var body: some View {
        HStack {
            Toggle(isOn: $bookingOptionIsOn) {
                Text(title)
                Text(subheadline)
            }

        }
    }
}

struct BookingOption_Previews: PreviewProvider {
    static var previews: some View {
        BookingOption(bookingOptionIsOn: .constant(false), title: "Instant Book", subheadline: "Book without waiting for the host to to respond")
    }
}
