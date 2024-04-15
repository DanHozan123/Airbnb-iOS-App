//
//  PersonalInformationView.swift
//  Airbnb
//
//  Created by Dan Hozan on 15.04.2024.
//

import SwiftUI

struct PersonalInformationView: View {
    
    var user: User
    
    @Environment (\.presentationMode) var presentationMode
    
    @State var firstName = ""
    @State var lastName = ""
    @State var phoneNumber = ""
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading){
                
                // fist name, last name and phone number
                VStack(alignment: .leading) {
                    Text("First Name")
                    TextFieldCustom(input: user.firstName, value: $firstName)
                    Text("Last Name")
                    TextFieldCustom(input: user.lastName, value: $lastName)
                    
                    Text("Phone Number*")
        
                    if let phoneNumber = user.phoneNumber {
                        TextFieldCustom(input: phoneNumber, value: $phoneNumber)
                    } else {
                        TextFieldCustom(input: "Enter your phone number", value: $phoneNumber)
                    }
                    Text("Add a number so confirmed guests and Airbnb can get in touch. You can add other numbers and chose how they're used.")
                        .font(.footnote)
                        .foregroundColor(.gray)
    
                    Divider()
                        .background(.gray)
                        .padding(.vertical)
                }
                
                // email, government ID and contact
                VStack(alignment: .leading) {
                    PersonalInfoItem(title: "Email", text: user.email)
                    PersonalInfoItem(title: "Government ID", text: "not provided")
                    PersonalInfoItem(title: "Emergency contact", text: "not provided")
                }
            }
            .padding()
            .navigationTitle("Edit personal info")
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
                        print("save")
                    } label: {
                        Text("Save")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .underline()
                    }
                    .tint(.black)

                }
            }
        }
    }
}

struct PersonalInformationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            PersonalInformationView(user: MOCK_DATA_USER)
        }
    }
}
