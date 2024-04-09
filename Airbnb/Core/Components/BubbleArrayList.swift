//
//  BubbleArrayList.swift
//  Airbnb
//
//  Created by Dan Hozan on 09.04.2024.
//

import SwiftUI

struct BubbleArrayList: View {
    
    var arrayData = ["Any", "1", "2", "3", "4", "5", "6", "7", "8+"]
    
    @Binding var selectedBubble: String
    
    var body: some View {
        
        ScrollView(.horizontal) {
            HStack {
                ForEach(arrayData, id: \.self) { data in
                    
                    Button {
                        selectedBubble = data
                    } label: {
                        Text(data)
                            .padding(.horizontal)
                            .padding(.vertical, 10)
                            .foregroundColor(selectedBubble == data ? .white : .black)
                            .background(selectedBubble == data ? .black : .white)
                            .cornerRadius(15)
                            .overlay {
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.gray, lineWidth: 1)
                            }
                    }
                }
            }
            .padding(5)
        }
    }
}

struct BubbleArrayList_Previews: PreviewProvider {
    static var previews: some View {
        BubbleArrayList(selectedBubble: .constant("Any"))
    }
}
