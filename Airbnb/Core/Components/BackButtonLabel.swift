//
//  BackButtonLabel.swift
//  Airbnb
//
//  Created by Dan Hozan on 15.04.2024.
//

import SwiftUI

struct BackButtonLabel: View {
    var body: some View {
        Image(systemName: "chevron.left")
            .resizable()
            .frame(width: 10, height: 15)
            .foregroundColor(.black)
    }
}

struct BackButtonLabel_Previews: PreviewProvider {
    static var previews: some View {
        BackButtonLabel()
    }
}
