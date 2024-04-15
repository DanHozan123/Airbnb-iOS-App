//
//  ProfileView.swift
//  Airbnb
//
//  Created by Dan Hozan on 05.04.2024.
//

import SwiftUI

struct ProfileView: View {
    
    var user: User?
    
    var body: some View {
        NavigationStack {
            
            VStack {
                if let user = user {
                    ProfileWithUserView(user: user)
                } else {
                    ProfileWithGuestUserView()
                }
            }
            .navigationTitle("Profile")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ProfileView(user: MOCK_DATA_USER)
        }
    }
}
