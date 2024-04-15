//
//  ImagesSwiperWithCounter.swift
//  Airbnb
//
//  Created by Dan Hozan on 12.04.2024.
//

import SwiftUI

struct ImagesSwiperWithCounter: View {
    
    let imageNames: [String]
    let width =  UIScreen.main.bounds.width
    
    @State private var currentIndex = 0
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                ForEach(imageNames.indices, id: \.self) { index in
                    Image(self.imageNames[index])
                        .resizable()
                        .scaledToFill()
                        .frame(width: width, height: width)
                        .clipped()
                        .opacity(index == currentIndex ? 1 : 0)
                        .frame(height: UIScreen.main.bounds.width / 1.3)
                        .clipped()
                }
                
                Text(" \(currentIndex + 1) / \(imageNames.count) ")
                    .foregroundColor(.white)
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .padding(.horizontal, 6)
                    .padding(.vertical, 3)
                    .background(GRAY_CUSTOM4.opacity(0.8))
                    .cornerRadius(3)
                    .padding()
                
            }
            
        }
        .gesture(
            DragGesture()
                .onEnded { value in
                    let horizontalSwipe = value.translation.width
                    
                    // Swipe left
                    if horizontalSwipe < 0 && self.currentIndex < self.imageNames.count - 1 {
                        self.currentIndex += 1
                    }
                    
                    // Swipe right
                    if horizontalSwipe > 0 && self.currentIndex > 0 {
                        self.currentIndex -= 1
                    }
                }
        )
    }
}

struct ImagesSwiperWithCounter_Previews: PreviewProvider {
    static var previews: some View {
        ImagesSwiperWithCounter(imageNames: MOCK_DATA_POST[0].images)
    }
}
