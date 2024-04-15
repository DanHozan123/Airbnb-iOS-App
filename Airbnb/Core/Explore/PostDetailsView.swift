//
//  PostDetails.swift
//  Airbnb
//
//  Created by Dan Hozan on 12.04.2024.
//

import SwiftUI

struct PostDetailsView: View {
    
    var post: Post
    var user: User
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var favorite = false
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ImagesSwiperWithCounter(imageNames: post.images)
                
                VStack{
                    Text(post.name)
                        .font(.title2)
                        .fontWeight(.semibold)
                    
               
                }.padding(.horizontal)
                
                Spacer()
           
            }
            
        }
        .ignoresSafeArea(.all, edges: .top)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    
                    Image(systemName: "chevron.left")
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 7.5, height: 10)
                        .foregroundColor(.black)
                        .frame(width: 25, height: 25)
                        .background(.white)
                        .cornerRadius(25)
                        .shadow(color: .black, radius: 3, x: 0, y: 2)
                }
                .buttonStyle(.plain)
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    shareButtonTapped()
                } label: {
                    Image(systemName: "square.and.arrow.up.circle.fill")
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.white)
                        .shadow(color: .black, radius: 3, x: 0, y: 2)
                    
                }
                .buttonStyle(.plain)
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    favorite.toggle()
                } label: {
                    Image(systemName: "heart.circle.fill")
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.white)
                        .background(favorite ? .red : Color.clear)
                        .cornerRadius(13)
                        .shadow(color: .black, radius: 3, x: 0, y: 2)
                    
                    
                    
                }
                .buttonStyle(.plain)
            }
            
        }
    }
    
    func shareButtonTapped() {
        let textToShare = "Share this post with your frends!"
        let activityViewController = UIActivityViewController(activityItems: [textToShare], applicationActivities: nil)
        
        guard let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene else { return }
        
        if let window = scene.windows.first, let rootViewController = window.rootViewController {
            rootViewController.present(activityViewController, animated: true, completion: nil)
        }
    }
    
}

struct PostDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            PostDetailsView(post: MOCK_DATA_POST[0], user: MOCK_DATA_USER)
        }
    }
}
