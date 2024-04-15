//
//  TripsView.swift
//  Airbnb
//
//  Created by Dan Hozan on 05.04.2024.
//

import SwiftUI

struct TripsView: View {
    var user: User?
    
    @State private var showAuthentificationView = false
    
    var body: some View {
        NavigationStack  {
            ScrollView {
                
                if let _ = user {
                    Text("user not nil")
                } else {
                    VStack(alignment: .leading) {
                        Text("Log in to view your wishlists")
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        Text("You can create, view, or edit wishlists once you're logged in.")
                            .font(.subheadline)
                            .fontWeight(.medium)
                            .padding(.top, 1)
                            .foregroundColor(GRAY_CUSTOM3)
                        
                        Button {
                            showAuthentificationView.toggle()
                        } label: {
                            ButtonLabel(text: "Lon in", color: .pink)
                                .padding(.trailing, UIScreen.main.bounds.width / 1.5)
                                .padding(.top, 50)
                        }
                        
                    }
                    .padding()
                }
                
            }
            .sheet(isPresented: $showAuthentificationView, content: {
                AuthentificationView(isShowingAuthentificationView: $showAuthentificationView)
            })
            .navigationTitle("Wishlist")
        }
    }
}

struct TripsView_Previews: PreviewProvider {
    static var previews: some View {
        TripsView()
    }
}
