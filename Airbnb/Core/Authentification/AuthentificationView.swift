//
//  AuthentificationView.swift
//  Airbnb
//
//  Created by Dan Hozan on 05.04.2024.
//

import SwiftUI

struct AuthentificationView: View {
    
    @State var phoneNumber = ""
    @State var email = ""
    @State var continueWithPhone = true
    
    @Binding var isShowingAuthentificationView: Bool

    var body: some View {
        
        NavigationStack {
            VStack {
                
                VStack {
                    if continueWithPhone {
                        VStack(alignment: .leading) {
                            TextFieldCustom(input: "Phone number", value: $phoneNumber)
                            Text("We'll call or text to confirm your number. Standard messege and data rates apply.")
                                .modifier(TextAuthentificationForm())
                        }
                    } else {
                        TextFieldCustom(input: "Email", value: $email)
                    }
                }
                .animation(.easeOut(duration: 0.3), value: continueWithPhone)
                
                
                NavigationLink(destination: SignupView()) {
                    ButtonLabel(text: "Continue", color: Color.pink)
                }
                .padding(.top, 15)
                
                HStack {
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(Color.gray)
                    Text("or")
                        .font(.system(size: 12))
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(Color.gray)
                }
                .padding(.vertical, 30)
                
                if continueWithPhone {
                    Button{
                        continueWithPhone.toggle()
                        phoneNumber = ""
                    } label: {
                        ButtonLabelCustom(input: "Continue with email", image: "email")
                    }
                } else {
                    Button{
                        continueWithPhone.toggle()
                        email = ""
                    } label: {
                        ButtonLabelCustom(input: "Continue with phone", image: "phone")
                    }
                }
                
                Button{} label: {
                    ButtonLabelCustom(input: "Continue with apple", image: "apple")
                }
                
                Button{} label: {
                    ButtonLabelCustom(input: "Continue with google", image: "google")
                }
                Button{} label: {
                    ButtonLabelCustom(input: "Continue with facebook", image: "facebook")
                }
                
                Spacer()
                
            }
            .padding(.horizontal)
            .toolbar {
    
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        isShowingAuthentificationView.toggle()
                    } label: {
                        Image(systemName: "x.circle.fill")
                            .renderingMode(.template)
                            .foregroundColor(.black)
                        
                    }
                    
                    .buttonStyle(.plain)
                }
                
                ToolbarItem(placement: .principal) {
                    Text("Log in or sign up")
                        .font(.title3)
                        .fontWeight(.semibold)
                }
            }
        }
    }
}

struct AuthentificationView_Previews: PreviewProvider {
    static var previews: some View {
        AuthentificationView(isShowingAuthentificationView: .constant(true))
    }
}
