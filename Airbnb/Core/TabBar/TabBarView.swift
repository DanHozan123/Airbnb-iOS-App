//
//  ContentView.swift
//  Airbnb
//
//  Created by Dan Hozan on 04.04.2024.
//

import SwiftUI

struct TabBarView: View {
    
    
    var body: some View {
        VStack {
            
            TabView() {
                ExploreView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Explore")
                        
                    }
                
                WishlistsView()
                    .tabItem {
                        Image(systemName: "heart")
                        Text("Wislists")
                    }
                
                TripsView()
                    .tabItem {
                        
                        Image(systemName: "list.star")
                        Text("Trips")
                    }
                InboxView()
                    .tabItem {
                        Image(systemName: "message")
                        Text("Inbox")
                    }
                
                ProfileView()
                    .tabItem {
                        Image(systemName: "person.crop.circle.fill")
                        Text("Profile")
                    }
            }
            .accentColor(.red)
        }
    }
}


struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
