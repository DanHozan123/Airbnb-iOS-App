//
//  CheckboxShape.swift
//  Airbnb
//
//  Created by Dan Hozan on 10.04.2024.
//

import SwiftUI

struct CheckboxShape: View {
    
    @Binding var option: Option
    
    @State var isChecked = false
    
    var body: some View {
        
        HStack {
            Button {
                isChecked.toggle()
                
            } label: {
                Text(option.title)
                    .multilineTextAlignment(.leading)
                
                Spacer()
                
                ZStack {
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.gray, lineWidth: 2)
                        .frame(width: 25, height: 25)
                        .background(isChecked ? .black : .white)
                        .cornerRadius(5)
                    
                    if isChecked {
                        Image(systemName: "checkmark")
                            .foregroundColor(.white)
                    }
                }
            }
            .tint(.black)
        }
    }
}
struct CheckboxShape_Previews: PreviewProvider {
    static var previews: some View {
        CheckboxShape(option: .constant(Option(title: "Wifi")), isChecked: false)
    }
}
