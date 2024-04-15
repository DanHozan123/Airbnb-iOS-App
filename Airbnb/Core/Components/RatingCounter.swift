//
//  RatingCounter.swift
//  Airbnb
//
//  Created by Dan Hozan on 12.04.2024.
//

import SwiftUI

struct RatingCounter: View {
    var body: some View {
        HStack {
            Image(systemName: "star.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 13, height: 13)
            Text("4.8 (35)")
                .font(.subheadline)
        }
    }
}

struct RatingCounter_Previews: PreviewProvider {
    static var previews: some View {
        RatingCounter()
    }
}
