//
//  AddPassword.swift
//  Airbnb
//
//  Created by Dan Hozan on 05.04.2024.
//

import SwiftUI

struct AddPassword: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @Binding var password: String
    
    var body: some View {
        
        VStack {
            VStack(alignment: .leading) {
                
                SecureField("Password", text: $password)
                    .font(.system(size: 14))
                    .padding(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                    
                Text("Enter your password associated with your email.")
                    .modifier(TextAuthentificationForm())
                
                NavigationLink(destination: Text("password enterd")) {
                    ButtonLabelWithColor(text: "Continue", color: .black)
                        .padding(.vertical, 20)
                }
                
                Spacer()
                
            }
            .padding(.horizontal)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Password")
                        .font(.title3)
                        .fontWeight(.semibold)
                }
                
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        BackButtonLabel()
                    }
                }
            }
        }
    }
    
    struct AddPassword_Previews: PreviewProvider {
        static var previews: some View {
            NavigationStack {
                AddPassword(password: .constant(""))
            }
        }
    }
}
