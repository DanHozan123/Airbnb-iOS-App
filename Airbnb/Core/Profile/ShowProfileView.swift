//
//  ShowProfileView.swift
//  Airbnb
//
//  Created by Dan Hozan on 15.04.2024.
//

import SwiftUI

struct ShowProfileView: View {
    
    var user: User
    
    @Environment (\.presentationMode) var presentationMode
    @State private var isCreateProfileViewPresented = false
    
    var body: some View {
        VStack(alignment: .leading) {
            
            // profile
            Button {
                
            } label: {
                VStack(alignment: .center) {
                    Image(user.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 90, height: 90)
                        .clipShape(Circle())
                    Text(user.firstName)
                        .font(.title3)
                        .fontWeight(.bold)
                    Text("Guest")
                        .font(.subheadline)
                        .foregroundColor(GRAY_CUSTOM3)
                        .fontWeight(.semibold)
                }
                .padding(.vertical, 35)
                .frame(maxWidth: .infinity)
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.white)
                        .shadow(radius: 10, x: 0, y: 4)
                )
                .padding(.vertical, 10)
            }
            .tint(.black)
            
            
            
            // identity verification
            VStack(alignment: .leading) {
                Text("Identity verification")
                    .font(.system(size: 18))
                    .fontWeight(.semibold)
                    .padding(.bottom, 5)
                Text("Show others you're really you with the identity verification badge.")
                    .font(.system(size: 14))
                    .foregroundColor(GRAY_CUSTOM3)
                Button {
                    
                } label: {
                    ButtonLabelWithRectangle(input: "Get the badge", image: "")
                        .padding(.vertical, 10)
                        .padding(.trailing, UIScreen.main.bounds.width / 2)
                }
            }
            .padding(.vertical, 20)
            
            Divider()
                .background(.gray)
                .padding(.vertical, 10)
            
            // create profile
            VStack(alignment: .leading) {
                Text("It's time to create your profile")
                    .font(.system(size: 18))
                    .fontWeight(.semibold)
                    .padding(.bottom, 5)
                Text("Your Airbnb profile is an inportant part of every reservation. Create yours to help other Hosts and guests to get to know you.")
                    .font(.system(size: 14))
                    .foregroundColor(GRAY_CUSTOM3)
                Button {
                    isCreateProfileViewPresented.toggle()
                } label: {
                    ButtonLabelWithColor(text: "Create Profile", color: .pink)
                        .padding(.vertical, 10)
                }
            }
            .padding(.vertical, 20)
            
            Spacer()
            
        }
        .padding()
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    BackButtonLabel()
                }
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    isCreateProfileViewPresented.toggle()
                } label: {
                    Text("Edit")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .underline()
                }
                .tint(.black)

            }
        }
        .sheet(isPresented: $isCreateProfileViewPresented) {
            CreateProfileView(isCreateProfileViewPresented: $isCreateProfileViewPresented, user: user)
        }
        
    }
    
    
}

struct ShowProfileView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ShowProfileView(user: MOCK_DATA_USER)
        }
    }
}
