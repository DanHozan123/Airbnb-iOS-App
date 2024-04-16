//
//  InputDataPopup.swift
//  Airbnb
//
//  Created by Dan Hozan on 16.04.2024.
//

import SwiftUI

struct InputDataPopup: View {
    
    var title: String
    var text: String
    var textField: String
    
    @Binding var data: String
    @Binding var isInputDataPopupPresented: Bool
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 10) {
                Text(title)
                    .font(.title2)
                    .fontWeight(.medium)
                Text(text)
                    .font(.subheadline)
                    .foregroundColor(GRAY_CUSTOM3)
                TextFieldCustom(input: textField, value: $data)
                    .padding(.vertical, 30)
                Button {
                    print("save")
                } label: {
                    ButtonLabelWithColor(text: "Save", color: .black)
                }
                Spacer()
            }
            .padding()
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        isInputDataPopupPresented.toggle()
                    } label: {
                        XButtonLabel()
                    }
                }
            }
        }
    }
    
    
}

struct InputDataPopup_Previews: PreviewProvider {
    static var previews: some View {
        InputDataPopup(title: "Where did you go to school?", text: "Whether it's home school, secondary school or trade school, name the school that made you who you are.", textField: "Where I went to school:", data: .constant(""), isInputDataPopupPresented: .constant(true))
    }
}
