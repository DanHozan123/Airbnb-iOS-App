//
//  ImageSwiper.swift
//  Airbnb
//
//  Created by Dan Hozan on 12.04.2024.
//

import SwiftUI


struct ImageSwiper: View {
    let imageNames: [String] // Array of image names
    var size = UIScreen.main.bounds.size.width - 40
    @State private var currentIndex = 0
    
    var body: some View {
        ZStack {
            ZStack {
                ForEach(imageNames.indices, id: \.self) { index in
                    
                    Image(self.imageNames[index])
                        .resizable()
                        .scaledToFill()
                        .frame(width: size, height: size)
                        .clipped()
                        .cornerRadius(15)
                        .opacity(index == currentIndex ? 1 : 0)
                        .offset(x: 0, y: index == currentIndex ? 0 : -UIScreen.main.bounds.height)

                }
            }
            
            HStack(spacing: 8) {
                ForEach(imageNames.indices, id: \.self) { index in
                    Circle()
                        .fill(index == currentIndex ? Color.white : Color(UIColor.systemGray4))
                        .frame(width: 7, height: 7)
                }
            }
            .padding(.top, size - 35)
            
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


struct ImageSwiper_Previews: PreviewProvider {
    static var previews: some View {
        ImageSwiper(imageNames: MOCK_DATA_POST[0].images)
    }
}
