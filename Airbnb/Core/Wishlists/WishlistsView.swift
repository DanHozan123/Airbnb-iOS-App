//
//  WishlistsView.swift
//  Airbnb
//
//  Created by Dan Hozan on 05.04.2024.
//

import SwiftUI

struct WishlistsView: View {
    
    var user: User?
    
    @State private var showAuthentificationView = false
    
    var body: some View {
        NavigationStack  {
            ScrollView {
                
                if let _ = user {
                    Text("user not nil")
                } else {
                    VStack(alignment: .leading) {
                        Text("No trips yet")
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        Text("When you're ready to plan your next trip, we're here to help.")
                            .font(.subheadline)
                            .fontWeight(.medium)
                            .padding(.top, 1)
                            .foregroundColor(GRAY_CUSTOM3)                        
                        Button {
                            showAuthentificationView.toggle()
                        } label: {
                            ButtonLabelWithColor(text: "Lon in", color: .pink)
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
            .navigationTitle("Trips")
        }
    }
}

struct WishlistsView_Previews: PreviewProvider {
    static var previews: some View {
        WishlistsView(user: nil)
    }
}
