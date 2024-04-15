//
//  AddPasswordView.swift
//  Airbnb
//
//  Created by Dan Hozan on 05.04.2024.
//

import SwiftUI

struct SignupView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var firstName = ""
    @State var lastName = ""
    @State var secondEmail = ""
    @State var selectedDate = Date()
    @State var password = ""
    @State var receiveMail: Bool = false
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        return formatter
    }()
    
    var body: some View {
        
        ScrollView {
            VStack {
                
                VStack(alignment: .leading) {
                    TextFieldCustom(input: "First Name", value: $firstName)
                    
                    TextFieldCustom(input: "Last Name", value: $lastName)
                    
                    Text("Make sure it matches the name on your government ID.")
                    .modifier(TextAuthentificationForm())
                }
                
                VStack(alignment: .leading) {
                    Text("Birthday selected: \(dateFormatter.string(from: selectedDate))")
                        .padding(.top, 10)
                        .font(.system(size: 14))
                        .padding(.leading, 1)
                    
                    DatePicker(">", selection: $selectedDate, in: Date()..., displayedComponents: [.date])
                        .datePickerStyle(.wheel)
                        .font(.system(size: 14))
                    
                    Text("To sign up, you need to be at least 18. Your birthday won't be shared with other people who user Airbnb.")
                        .modifier(TextAuthentificationForm())
                       
                }
                
                VStack(alignment: .leading) {
                    TextFieldCustom(input: "Email", value: $secondEmail)
                        .padding(.top, 10)
                    
                    Text("We'll email you trip confirmations and receipts.")
                        .modifier(TextAuthentificationForm())
                    
                    SecureField("Password", text: $password)
                        .font(.system(size: 14))
                        .padding(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                        .padding(.vertical, 10)
                }
                
                VStack {
                    Text("By selecting Agree and continue, I agree to Airbnb’s Terms of Service, Payments Terms of Service, and Nondiscrimination Policy and acknowledge the Privacy Policy.")
                        .font(.system(size: 12))
                        .foregroundColor(.black)
                        .fontWeight(.semibold)
                    
                    NavigationLink(destination: Text("agree and continue")) {
                        ButtonLabelWithColor(text: "Agree and continue", color: .black)
                            .padding(.vertical, 20)
                    }
                    
                    Divider()
                        .background(.gray)
                    
                    Text("Airbnb will send you members-only deals, inspiration, marketing emails, and push notifications. You can opt out of receiving these at any time in your account settings or directly from the marketing notification.")
                        .font(.footnote)
                        .foregroundColor(GRAY_CUSTOM3)
                }
                
                HStack {
                    Toggle(isOn: $receiveMail) {
                        Text("I don’t want to receive marketing messages from Airbnb.")
                            .font(.footnote)
                            .foregroundColor(GRAY_CUSTOM3)
                    }
                  
                    Spacer()
                }
                .padding(.vertical, 10)
                
            }
            .padding(.horizontal)
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Finish signing up")
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
}

struct AddPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            SignupView()
        }
    }
}
