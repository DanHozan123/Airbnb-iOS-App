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
                
                NavigationLink(destination: Text("password")) {
                    Text("Continue")
                        .frame(maxWidth: .infinity)
                        .font(.system(size: 14))
                        .foregroundColor(.white)
                        .padding(10)
                        .background(.black)
                        .cornerRadius(5)
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
                        Image(systemName: "chevron.left")
                            .foregroundColor(.black)
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
