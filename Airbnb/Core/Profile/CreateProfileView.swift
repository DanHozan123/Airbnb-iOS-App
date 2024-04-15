//
//  CreateProfileView.swift
//  Airbnb
//
//  Created by Dan Hozan on 15.04.2024.
//

import SwiftUI

struct CreateProfileView: View {
    
    @Binding var isCreateProfileViewPresented: Bool
    
    var user: User
    
    var body: some View {
        
        NavigationStack {
            ZStack(alignment: .bottom) {
                ScrollView() {
                    VStack(alignment: .leading) {
                        
                        // profile image
                        ZStack() {
                            Image(user.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 150, height: 150)
                                .clipShape(Circle())
                            
                            VStack {
                                Spacer()
                                Button {
                                    print("add image")
                                } label: {
                                    HStack {
                                        Image(systemName: "camera.fill")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 15, height: 15)
                                        Text("Add")
                                            .font(.system(size: 14))
                                    }
                                    .padding(.vertical, 5)
                                    .padding(.horizontal, 10)
                                    .background(.white)
                                    .cornerRadius(30)
                                }
                                .tint(.black)
                                .padding(.bottom, 10)
                            }
                            
                        }
                        .frame(height: 180)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .shadow(radius: 10, x: 0, y: 2)
                        
                        // profile
                         VStack() {
                             Text("Your profile")
                                 .font(.system(size: 18))
                                 .fontWeight(.semibold)
                                 .frame(maxWidth: .infinity, alignment: .leading)

                             
                         }
                         
                        
                        // Fileds
                        VStack(alignment: .leading) {
                            
                        }
                        
                        // about you
                        VStack(alignment: .leading) {
                            
                        }
                        
                        // where you're been
                        VStack(alignment: .leading) {
                            
                        }
                    }
                }
               
               
                VStack {
                    Button {
                        isCreateProfileViewPresented.toggle()
                    } label: {
                        ButtonLabelWithColor(text: "Done", color: .black)
                            .padding(.horizontal)
                    }
                    .padding(.top, 15)
                    Spacer()
                }
              
                .frame(maxHeight: 90)
                .background(.white)
                
            }
            .padding(.horizontal)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        isCreateProfileViewPresented.toggle()
                    } label: {
                        XButtonLabel()
                    }

                }
            }
        .ignoresSafeArea(.all, edges: .bottom)
        }
    }
}

struct CreateProfileView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            CreateProfileView(isCreateProfileViewPresented: .constant(true), user: MOCK_DATA_USER)
        }
    }
}
