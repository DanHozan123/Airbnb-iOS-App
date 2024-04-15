//
//  ProfileWithGuestUserView.swift
//  Airbnb
//
//  Created by Dan Hozan on 13.04.2024.
//

import SwiftUI


struct ProfileWithGuestUserView: View {
    
  
    @State private var isAuthentificationSheetPresented = false
    @State private var isAirbnbYourPlaceSheetPresented = false
    
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Log in to start planning your next trip")
                .font(.system(size: 17))
                .foregroundColor(GRAY_CUSTOM3)
            
            Button {
                isAuthentificationSheetPresented.toggle()
            } label: {
                ButtonLabelWithColor(text: "Log in", color: .pink)
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
            
            Button {
                isAirbnbYourPlaceSheetPresented.toggle()
            } label: {
                AirbnbYourPlace()
            }
            .padding(.vertical, 30)
            .tint(.black)


            VStack {

                NavigationLink {
                    Text("settings")
                } label: {
                    SettingsItemLabel(image: SettingsItems.settings.imageName, text: SettingsItems.settings.rawValue)
                }
                
                NavigationLink {
                    Text("accesibility")
                } label: {
                    SettingsItemLabel(image: SettingsItems.accessibility.imageName, text: SettingsItems.accessibility.rawValue)
                }
                
                NavigationLink {
                    Text("get help")
                } label: {
                    SettingsItemLabel(image: SettingsItems.getHelp.imageName, text: SettingsItems.getHelp.rawValue)
                }
                
                NavigationLink {
                    Text("third-party tools")
                } label: {
                    SettingsItemLabel(image: SettingsItems.thirdPartyTools.imageName, text: SettingsItems.thirdPartyTools.rawValue)
                }
                
            }
            .tint(.black)
            
            Spacer()
        }
        .sheet(isPresented: $isAuthentificationSheetPresented, content: {
            AuthentificationView(isShowingAuthentificationView: $isAuthentificationSheetPresented)
        })
        .sheet(isPresented: $isAirbnbYourPlaceSheetPresented, content: {
            AirbnbYourPlaceView()
        })
        .padding()
    }
}

struct ProfileWithGuestUserView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ProfileWithGuestUserView()
        }
    }
}
