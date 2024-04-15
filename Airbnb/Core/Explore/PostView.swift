//
//  PostView.swift
//  Airbnb
//
//  Created by Dan Hozan on 12.04.2024.
//

import SwiftUI

struct PostView: View {
    
    var size = UIScreen.main.bounds.size.width - 40
    var post: Post
    var user: User
    
    @State var love = false
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            
            ZStack (alignment: .topTrailing) {
                ImageSwiper(imageNames: post.images)
                LoveButton(isClicked: $love)
                    .padding()
            }
            
            HStack{
                Text("\(post.location), \(post.country)")
                    .fontWeight(.medium)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                RatingCounter()
            }
            .padding(.top, 8)
           
            
            VStack(alignment: .leading){
                Text("Hosted by \(user.firstName) \(user.lastName)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                
                Text("\(post.dateFormatter.string(from: post.dataStart)) - \(post.dateFormatter.string(from: post.dataEnd))")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.bottom, 1)
                
                Text("\(post.euroFormatter.string(from: post.total as NSNumber) ?? "0")")
                    .fontWeight(.medium)
                    .underline(true, color: .gray)
                + Text(" total")
                    .foregroundColor(Color(UIColor.systemGray))
                    .underline(true, color: .gray)
            }
       
        }
        .frame(width: size)
       
        
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: MOCK_DATA_POST[0], user: MOCK_DATA_USER)
    }
}
