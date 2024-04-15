//
//  ProfileWithGuestUserView.swift
//  Airbnb
//
//  Created by Dan Hozan on 13.04.2024.
//

import SwiftUI

struct ProfileWithGuestUserView: View {
    
    @State private var isAuthentificationSheetPresented = false
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Log in to start planning your next trip")
                .font(.system(size: 17))
                .foregroundColor(GRAY_CUSTOM3)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Button {
                isAuthentificationSheetPresented.toggle()
            } label: {
                ButtonLabel(text: "Log in", color: .pink)
                    .padding(.top, 20)
                    .padding(.bottom, 8)
            }
            
            Button {
                isAuthentificationSheetPresented.toggle()
            } label: {
                Text("Don't have an account? ")
                    .font(.footnote)
                    .foregroundColor(GRAY_CUSTOM3)
                + Text("Sign Up")
                    .font(.footnote)
                    .foregroundColor(GRAY_CUSTOM3)
                    .fontWeight(.semibold)
                    .underline()
            }
            
            AirbnbYourPlace()
                .padding(.vertical, 50)
            
            VStack {
                
                SettingsItemLabel(image: "gear", text: "Settings")
         
                SettingsItemLabel(image: "gear", text: "Settings")
               
                SettingsItemLabel(image: "gear", text: "Settings")
             
                SettingsItemLabel(image: "gear", text: "Settings")
             
                
            }
            
            
            Spacer()
        }
        .sheet(isPresented: $isAuthentificationSheetPresented, content: {
            AuthentificationView(isShowingAuthentificationView: $isAuthentificationSheetPresented)
        })
        .padding()
    }
}

struct ProfileWithGuestUserView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileWithGuestUserView()
    }
}
