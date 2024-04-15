//
//  InboxView.swift
//  Airbnb
//
//  Created by Dan Hozan on 05.04.2024.
//

import SwiftUI

struct InboxView: View {
    var user: User?
    
    @State private var showAuthentificationView = false
    
    var body: some View {
        NavigationStack  {
            ScrollView {
                
                if let _ = user {
                    Text("user not nil")
                } else {
                    VStack(alignment: .leading) {
                        Text("Log in to see messages")
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        Text("Once you log in, you'll find messages from hosts here.")
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
            .navigationTitle("Inbox")
        }
    }
}

struct InboxView_Previews: PreviewProvider {
    static var previews: some View {
        InboxView()
    }
}
