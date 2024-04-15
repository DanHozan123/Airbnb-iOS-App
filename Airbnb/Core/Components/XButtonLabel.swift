//
//  XButtonLabel.swift
//  Airbnb
//
//  Created by Dan Hozan on 15.04.2024.
//

import SwiftUI

struct XButtonLabel: View {
    var body: some View {
        Image(systemName: "x.circle.fill")
            .resizable()
            .frame(width: 25, height: 25)
            .foregroundColor(.black)
    }
}

struct XButtonLabel_Previews: PreviewProvider {
    static var previews: some View {
        XButtonLabel()
    }
}
