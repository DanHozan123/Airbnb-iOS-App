//
//  ProfileWithUserView.swift
//  Airbnb
//
//  Created by Dan Hozan on 13.04.2024.
//

import SwiftUI

struct ProfileWithUserView: View {
    
    var user: User
    
    var body: some View {
        Text(user.fullname)
    }
}

struct ProfileWithUserView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileWithUserView(user: MOCK_DATA_USER)
    }
}
