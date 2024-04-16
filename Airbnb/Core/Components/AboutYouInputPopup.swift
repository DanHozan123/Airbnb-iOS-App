//
//  AboutYouInput.swift
//  Airbnb
//
//  Created by Dan Hozan on 16.04.2024.
//

import SwiftUI

struct AboutYouInputPopup: View {
    var title: String
    var text: String
    var textField: String
    private let characterLimit = 450

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
                
                VStack(alignment: .trailing) {
                    TextEditor(text: $data)
                        .frame(height: 150)
                        .border(Color.gray, width: 1)
                    
                    Text("\(data.count) / \(characterLimit) characters")
                        .foregroundColor(data.count > characterLimit ? .red : .secondary)
                    
                    Spacer()
                }
                
                
                
                
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

struct AboutYouInputPopup_Previews: PreviewProvider {
    static var previews: some View {
        AboutYouInputPopup(title: "About you", text: "Tell us a little bit about yourself so your future Hosts or guests can ger to know you.", textField: "", data: .constant(""), isInputDataPopupPresented: .constant(true))
    }
}
